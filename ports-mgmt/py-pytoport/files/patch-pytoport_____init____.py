--- pytoport/__init__.py.orig	2019-06-04 03:51:47 UTC
+++ pytoport/__init__.py
@@ -124,7 +124,7 @@ def get_minimum(data):
         lowest = supported[0]
 
     if lowest[1] == -1:
-        ver = "%s" % lowest[0]
+        ver = "%s.0" % lowest[0]
     else:
         ver = "%s.%s" % lowest
 
