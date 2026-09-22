--- arduino-ide-extension/src/electron-main/ide-updater/ide-updater-impl.ts.orig	2026-06-09 15:17:09 UTC
+++ arduino-ide-extension/src/electron-main/ide-updater/ide-updater-impl.ts
@@ -53,6 +53,11 @@ export class IDEUpdaterImpl implements IDEUpdater {
   }
 
   async checkForUpdates(initialCheck?: boolean): Promise<UpdateInfo | void> {
+    // FreeBSD port: updates are handled by the package manager. The upstream
+    // update feed only publishes Linux, macOS and Windows artifacts.
+    if (process.platform === 'freebsd') {
+      return;
+    }
     if (initialCheck) {
       if (this.isAlreadyChecked) return Promise.resolve();
       this.isAlreadyChecked = true;
