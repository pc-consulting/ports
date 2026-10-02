--- crates/sdroxide-rade/build.rs.orig
+++ crates/sdroxide-rade/build.rs
@@ -33,11 +33,17 @@
 
     // Always Release: the neural encoder/decoder is unusably slow unoptimized,
     // including under a plain `cargo build`.
-    let dst = cmake::Config::new(&wrapper)
-        .define("RADE_C_DIR", rade_c.to_string_lossy().as_ref())
+    let mut cfg = cmake::Config::new(&wrapper);
+    cfg.define("RADE_C_DIR", rade_c.to_string_lossy().as_ref())
         .profile("Release")
-        .build_target("rade_static")
-        .build();
+        .build_target("rade_static");
+    // FreeBSD port: build without network access by pointing rade_c's
+    // BuildOpus.cmake at a pre-fetched Opus source archive.
+    println!("cargo:rerun-if-env-changed=SDROXIDE_OPUS_URL");
+    if let Ok(url) = std::env::var("SDROXIDE_OPUS_URL") {
+        cfg.define("OPUS_URL", url);
+    }
+    let dst = cfg.build();
 
     let build = dst.join("build");
     // ExternalProject's default layout for rade_c's `build_opus` target, which
