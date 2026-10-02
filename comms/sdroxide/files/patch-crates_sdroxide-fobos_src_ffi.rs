--- crates/sdroxide-fobos/src/ffi.rs.orig
+++ crates/sdroxide-fobos/src/ffi.rs
@@ -152,7 +152,7 @@
 /// unversioned name resolves everywhere the *development* package (or its
 /// unversioned symlink) is installed, and the SOVERSION entry covers a
 /// runtime-only install where only that symlink exists.
-#[cfg(target_os = "linux")]
+#[cfg(any(target_os = "linux", target_os = "freebsd"))]
 fn lib_candidates() -> Vec<std::ffi::OsString> {
     ["libfobos.so", "libfobos.so.0"].iter().map(Into::into).collect()
 }
