--- electron-app/scripts/package.js.orig	2026-06-09 15:17:09 UTC
+++ electron-app/scripts/package.js
@@ -42,6 +42,15 @@ async function run() {
     '-c.extraMetadata.main',
     './arduino-ide-electron-main.js',
   ];
+  if (process.platform === 'freebsd') {
+    // FreeBSD port: only build the unpacked Linux layout (no zip/AppImage
+    // targets, which need tools that are downloaded at build time) and use the
+    // system Electron instead of downloading one.
+    args.unshift('--linux', '--dir');
+    if (process.env.ELECTRON_OVERRIDE_DIST_PATH) {
+      args.push('-c.electronDist', process.env.ELECTRON_OVERRIDE_DIST_PATH);
+    }
+  }
   const updateChannel = getChannel();
   if (updateChannel) {
     // TODO: fix the default nightly update channel preference value if required.
@@ -63,6 +72,7 @@ function electronPlatform() {
     case 'darwin': {
       return 'mac';
     }
+    case 'freebsd':
     case 'linux': {
       return 'linux';
     }
@@ -100,7 +110,8 @@ async function getArtifactName(version) {
  * @returns {Promise<string>}
  */
 async function getArtifactName(version) {
-  const { platform, arch } = process;
+  const platform = process.platform === 'freebsd' ? 'linux' : process.platform;
+  const { arch } = process;
   version = isNightly ? `nightly-${await timestamp()}` : version;
   const name = 'arduino-ide';
   switch (platform) {
