--- arduino-ide-extension/scripts/download-examples.js.orig	2026-06-09 15:17:09 UTC
+++ arduino-ide-extension/scripts/download-examples.js
@@ -30,21 +30,14 @@ const version = '1.10.3';
     return;
   }
 
-  const repository = await fs.mkdtemp(
-    path.join(os.tmpdir(), 'arduino-examples-')
-  );
-
-  exec(
-    'git',
-    ['clone', 'https://github.com/arduino/arduino-examples.git', repository],
-    { logStdout: true }
-  );
-
-  exec(
-    'git',
-    ['-C', repository, 'checkout', `tags/${version}`, '-b', version],
-    { logStdout: true }
-  );
+  // FreeBSD port: the `arduino-examples` checkout is provided by the port
+  // (a GH_TUPLE distfile) instead of being cloned from GitHub at build time.
+  const repository = process.env.ARDUINO_EXAMPLES_DIR;
+  if (!repository || !existsSync(path.join(repository, 'examples'))) {
+    throw new Error(
+      `Set ARDUINO_EXAMPLES_DIR to a checkout of arduino-examples ${version}.`
+    );
+  }
 
   mkdirSync(destination, { recursive: true });
   const examplesPath = path.join(repository, 'examples');
