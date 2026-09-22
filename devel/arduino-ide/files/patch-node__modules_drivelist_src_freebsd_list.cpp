--- node_modules/drivelist/src/freebsd/list.cpp.orig	2026-09-21 18:43:40 UTC
+++ node_modules/drivelist/src/freebsd/list.cpp
@@ -0,0 +1,434 @@
+/*
+ * Copyright 2017 balena.io
+ *
+ * Licensed under the Apache License, Version 2.0 (the "License");
+ * you may not use this file except in compliance with the License.
+ * You may obtain a copy of the License at
+ *
+ *    http://www.apache.org/licenses/LICENSE-2.0
+ *
+ * Unless required by applicable law or agreed to in writing, software
+ * distributed under the License is distributed on an "AS IS" BASIS,
+ * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
+ * See the License for the specific language governing permissions and
+ * limitations under the License.
+ */
+
+#include <sys/param.h>
+#include <sys/ucred.h>
+#include <sys/mount.h>
+#include <sys/sysctl.h>
+
+#include <cstdio>
+#include <cstdlib>
+#include <cstring>
+#include <cctype>
+
+#include <map>
+#include <sstream>
+#include <string>
+#include <vector>
+
+#include "../drivelist.hpp"
+
+namespace Drivelist {
+namespace {
+
+struct DiskInfo {
+  std::string name;
+  uint64_t size = 0;
+  uint32_t sectorSize = 512;
+  std::string descr;
+  std::string lunid;
+  std::string ident;
+  std::string rotationrate;
+};
+
+struct MountInfo {
+  std::string device;
+  std::string path;
+};
+
+/* struct PartitionInfo {
+  std::string disk;
+  std::string scheme;
+}; */
+
+std::string Trim(const std::string &value) {
+  const size_t first = value.find_first_not_of(" \t\r\n");
+  if (first == std::string::npos) {
+    return "";
+  }
+
+  const size_t last = value.find_last_not_of(" \t\r\n");
+  return value.substr(first, last - first + 1);
+}
+
+std::string Unquote(const std::string &value) {
+  std::string result = Trim(value);
+
+  if (result.size() >= 2 && result.front() == '"' &&
+      result.back() == '"') {
+    result = result.substr(1, result.size() - 2);
+  }
+
+  return result;
+}
+
+std::string RunCommand(const char *command) {
+  FILE *pipe = popen(command, "r");
+  if (pipe == nullptr) {
+    return "";
+  }
+
+  std::string output;
+  char buffer[4096];
+
+  while (fgets(buffer, sizeof(buffer), pipe) != nullptr) {
+    output += buffer;
+  }
+
+  pclose(pipe);
+  return output;
+}
+
+bool GetSysctlString(const char *name, std::string *value) {
+  size_t size = 0;
+
+  if (sysctlbyname(name, nullptr, &size, nullptr, 0) != 0 || size == 0) {
+    return false;
+  }
+
+  std::vector<char> buffer(size);
+
+  if (sysctlbyname(name, buffer.data(), &size, nullptr, 0) != 0) {
+    return false;
+  }
+
+  *value = std::string(buffer.data());
+  return true;
+}
+
+std::vector<std::string> GetKernelDisks() {
+  std::string value;
+
+  if (!GetSysctlString("kern.disks", &value)) {
+    return {};
+  }
+
+  std::istringstream stream(value);
+  std::vector<std::string> disks;
+  std::string disk;
+
+  while (stream >> disk) {
+    disks.push_back(disk);
+  }
+
+  return disks;
+}
+
+std::vector<DiskInfo> GetDiskInfo() {
+  const std::string output = RunCommand("/sbin/geom disk list 2>/dev/null");
+  std::vector<DiskInfo> disks;
+
+  DiskInfo *current = nullptr;
+
+  std::istringstream stream(output);
+  std::string line;
+
+  while (std::getline(stream, line)) {
+    line = Trim(line);
+
+    if (line.rfind("Geom name:", 0) == 0) {
+      disks.push_back({});
+      current = &disks.back();
+      current->name = Trim(line.substr(strlen("Geom name:")));
+      continue;
+    }
+
+    if (current == nullptr || line.empty()) {
+      continue;
+    }
+
+    const size_t colon = line.find(':');
+    if (colon == std::string::npos) {
+      continue;
+    }
+
+    const std::string key = Trim(line.substr(0, colon));
+    const std::string value = Unquote(line.substr(colon + 1));
+
+    if (key == "Mediasize") {
+      current->size = strtoull(value.c_str(), nullptr, 10);
+    } else if (key == "Sectorsize") {
+      current->sectorSize =
+          static_cast<uint32_t>(strtoul(value.c_str(), nullptr, 10));
+    } else if (key == "descr") {
+      current->descr = value;
+    } else if (key == "lunid") {
+      current->lunid = value;
+    } else if (key == "ident") {
+      current->ident = value;
+    } else if (key == "rotationrate") {
+      current->rotationrate = value;
+    }
+  }
+
+  return disks;
+}
+
+std::map<std::string, std::string> GetPartitionSchemes() {
+  const std::string output = RunCommand("/sbin/geom part list 2>/dev/null");
+  std::map<std::string, std::string> schemes;
+
+  std::istringstream stream(output);
+  std::string line;
+  std::string currentGeom;
+  std::string scheme;
+
+  while (std::getline(stream, line)) {
+    line = Trim(line);
+
+    if (line.rfind("Geom name:", 0) == 0) {
+      currentGeom = Trim(line.substr(strlen("Geom name:")));
+      scheme.clear();
+      continue;
+    }
+
+    if (currentGeom.empty()) {
+      continue;
+    }
+
+    if (line.rfind("scheme:", 0) == 0) {
+      scheme = Trim(line.substr(strlen("scheme:")));
+
+      /*
+       * geom part can also expose helper geoms such as diskid/<ident>.
+       * We only want the actual disk provider here.
+       */
+      if (currentGeom.find('/') == std::string::npos) {
+        schemes[currentGeom] = scheme;
+      }
+    }
+  }
+
+  return schemes;
+}
+
+std::vector<MountInfo> GetMounts() {
+  std::vector<MountInfo> mounts;
+
+  struct statfs *stats = nullptr;
+  const int count = getmntinfo(&stats, MNT_NOWAIT);
+
+  if (count <= 0 || stats == nullptr) {
+    return mounts;
+  }
+
+  for (int i = 0; i < count; ++i) {
+    const std::string from = stats[i].f_mntfromname;
+    const std::string on = stats[i].f_mntonname;
+
+    if (from.rfind("/dev/", 0) != 0) {
+      continue;
+    }
+
+    mounts.push_back({from.substr(5), on});
+  }
+
+  return mounts;
+}
+
+std::string ParentDisk(const std::string &provider) {
+  /*
+   * FreeBSD device naming:
+   *
+   *   nda0      -> nda0
+   *   nda0p2    -> nda0
+   *   da0      -> da0
+   *   da0s1    -> da0
+   *   md0      -> md0
+   *   cd0      -> cd0
+   *
+   * We deliberately only strip conventional partition suffixes here.
+   */
+  std::string result = provider;
+
+  const size_t p = result.find_last_of('p');
+  if (p != std::string::npos && p + 1 < result.size()) {
+    bool digits = true;
+
+    for (size_t i = p + 1; i < result.size(); ++i) {
+      if (result[i] < '0' || result[i] > '9') {
+        digits = false;
+        break;
+      }
+    }
+
+    if (digits) {
+      result.resize(p);
+      return result;
+    }
+  }
+
+  const size_t s = result.find_last_of('s');
+  if (s != std::string::npos && s + 1 < result.size()) {
+    bool digits = true;
+
+    for (size_t i = s + 1; i < result.size(); ++i) {
+      if (result[i] < '0' || result[i] > '9') {
+        digits = false;
+        break;
+      }
+    }
+
+    if (digits) {
+      result.resize(s);
+    }
+  }
+
+  return result;
+}
+
+}  // namespace
+
+std::vector<DeviceDescriptor> ListStorageDevices() {
+  const std::vector<std::string> kernelDisks = GetKernelDisks();
+  const std::vector<DiskInfo> diskInfo = GetDiskInfo();
+  const std::map<std::string, std::string> partitionSchemes =
+      GetPartitionSchemes();
+  const std::vector<MountInfo> mounts = GetMounts();
+
+  std::map<std::string, DiskInfo> infoByName;
+
+  for (const DiskInfo &info : diskInfo) {
+    infoByName[info.name] = info;
+  }
+
+  std::map<std::string, std::vector<std::string>> mountsByDisk;
+
+  for (const MountInfo &mount : mounts) {
+    mountsByDisk[ParentDisk(mount.device)].push_back(mount.path);
+  }
+
+  std::vector<DeviceDescriptor> result;
+
+  for (const std::string &name : kernelDisks) {
+    DeviceDescriptor device;
+
+    device.enumerator = "freebsd";
+    device.busVersionNull = true;
+    device.device = name;
+    device.devicePath = "/dev/" + name;
+    device.devicePathNull = false;
+    device.error = "";
+    device.partitionTableType = "";
+    device.blockSize = 512;
+    device.logicalBlockSize = 512;
+    device.isReadOnly = false;
+    device.isSystem = false;
+    device.isVirtual = false;
+    device.isRemovable = false;
+    device.isCard = false;
+    device.isSCSI = false;
+    device.isUSB = false;
+    device.isUAS = false;
+    device.isUASNull = true;
+
+    const auto info = infoByName.find(name);
+
+    if (info != infoByName.end()) {
+      device.size = info->second.size;
+      device.blockSize = info->second.sectorSize;
+      device.logicalBlockSize = info->second.sectorSize;
+      device.description = info->second.descr;
+      device.raw = info->second.descr;
+
+      device.isSCSI = name.rfind("da", 0) == 0;
+
+      if (device.isUSB) {
+        device.busType = "USB";
+      } else if (name.rfind("nda", 0) == 0) {
+        device.busType = "NVMe";
+      } else if (name.rfind("ada", 0) == 0) {
+        device.busType = "SATA";
+      } else if (name.rfind("cd", 0) == 0) {
+        device.busType = "ATAPI";
+      } else {
+        device.busType = "Unknown";
+      }
+
+      if (name.rfind("md", 0) == 0) {
+        device.isVirtual = true;
+        device.busType = "Virtual";
+      }
+
+      if (name.rfind("cd", 0) == 0) {
+        device.isRemovable = true;
+      }
+
+      if (name.rfind("md", 0) == 0) {
+        device.isRemovable = false;
+      }
+
+      if (info->second.size == 0 && name.rfind("cd", 0) == 0) {
+        device.size = 0;
+      }
+    } else {
+      device.size = 0;
+      device.description = name;
+      device.raw = name;
+
+      if (name.rfind("md", 0) == 0) {
+        device.isVirtual = true;
+        device.busType = "Virtual";
+      } else {
+        device.busType = "Unknown";
+      }
+    }
+
+    const auto scheme = partitionSchemes.find(name);
+    if (scheme != partitionSchemes.end()) {
+      device.partitionTableType = scheme->second;
+
+      for (char &c : device.partitionTableType) {
+        c = static_cast<char>(
+            tolower(static_cast<unsigned char>(c)));
+      }
+
+      if (device.partitionTableType != "mbr" &&
+          device.partitionTableType != "gpt") {
+        device.partitionTableType = "";
+      }
+    }
+
+    const auto mounted = mountsByDisk.find(name);
+    if (mounted != mountsByDisk.end()) {
+      for (const std::string &path : mounted->second) {
+        device.mountpoints.push_back(path);
+        device.mountpointLabels.push_back("");
+      }
+
+      for (const std::string &path : mounted->second) {
+        if (path == "/" || path == "/boot" || path == "/boot/efi") {
+          device.isSystem = true;
+          break;
+        }
+      }
+    }
+
+    /*
+     * Device descriptors expose mountpoint labels separately, but the
+     * generic PackDriveDescriptor currently only emits a label when one is
+     * available.  Leaving these entries empty is intentional; filesystem
+     * labels are not required by Arduino IDE's current drivelist use.
+     */
+    device.raw += " (" + name + ")";
+
+    result.push_back(device);
+  }
+
+  return result;
+}
+
+}  // namespace Drivelist
