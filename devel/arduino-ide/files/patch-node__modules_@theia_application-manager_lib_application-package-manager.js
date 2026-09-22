--- node_modules/@theia/application-manager/lib/application-package-manager.js.orig	2026-09-21 18:43:31 UTC
+++ node_modules/@theia/application-manager/lib/application-package-manager.js
@@ -179,9 +179,11 @@ class ApplicationPackageManager {
         if (!theiaElectron.electronVersion || !semver.satisfies(theiaElectron.electronVersion, currentRange)) {
             throw new AbortError('Dependencies are out of sync, please run "install" again');
         }
-        const ffmpeg = await Promise.resolve().then(() => require('@theia/ffmpeg'));
-        await ffmpeg.replaceFfmpeg();
-        await ffmpeg.checkFfmpeg();
+        if (process.platform !== 'freebsd') {
+            const ffmpeg = await Promise.resolve().then(() => require('@theia/ffmpeg'));
+            await ffmpeg.replaceFfmpeg();
+            await ffmpeg.checkFfmpeg();
+        }
     }
     insertAlphabetically(object, key, value) {
         const updated = {};
