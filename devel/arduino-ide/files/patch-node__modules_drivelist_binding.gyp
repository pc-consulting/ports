--- node_modules/drivelist/binding.gyp.orig	2026-09-21 18:43:34 UTC
+++ node_modules/drivelist/binding.gyp
@@ -55,6 +55,11 @@
           "sources": [
             "src/linux/list.cpp"
           ]
+        }],
+        [ 'OS=="freebsd"', {
+          "sources": [
+            "src/freebsd/list.cpp"
+          ]
         }]
       ]
     }
