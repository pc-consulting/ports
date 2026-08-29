--- electron-app/scripts/package.js.orig
+++ electron-app/scripts/package.js
@@ -42,2 +42,5 @@
   ];
+  if (process.platform === 'freebsd') {
+    args.unshift('--linux');
+  }
   const updateChannel = getChannel();
@@ -63,5 +66,8 @@
     case 'linux': {
       return 'linux';
     }
+    case 'freebsd': {
+      return 'linux';
+    }
     default:
       throw new Error(`Unsupported platform: ${process.platform}.`);
@@ -98,1 +104,2 @@
-  const { platform, arch } = process;
+  const platform = process.platform === 'freebsd' ? 'linux' : process.platform;
+  const { arch } = process;
