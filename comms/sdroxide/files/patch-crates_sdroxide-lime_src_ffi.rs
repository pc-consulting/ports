--- crates/sdroxide-lime/src/ffi.rs.orig
+++ crates/sdroxide-lime/src/ffi.rs
@@ -240,7 +240,7 @@
 /// unversioned name is what actually does the work where the development
 /// package is installed, and the versioned entries cover a runtime-only install
 /// where only the SONAME symlink exists.
-#[cfg(target_os = "linux")]
+#[cfg(any(target_os = "linux", target_os = "freebsd"))]
 fn lib_candidates() -> Vec<std::ffi::OsString> {
     let mut out: Vec<std::ffi::OsString> = vec!["libLimeSuite.so".into()];
     for major in ["23", "22", "21", "20"] {
