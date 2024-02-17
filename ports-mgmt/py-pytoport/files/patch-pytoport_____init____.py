--- pytoport/__init__.py.orig	2019-06-04 05:51:47.000000000 +0200
+++ pytoport/__init__.py	2024-02-16 00:14:43.581972000 +0100
@@ -124,7 +124,7 @@
         lowest = supported[0]
 
     if lowest[1] == -1:
-        ver = "%s" % lowest[0]
+        ver = "%s.0" % lowest[0]
     else:
         ver = "%s.%s" % lowest
 
@@ -153,12 +153,12 @@
     o.write("# Created by: ")
     if name is not None and email is not None:
         o.write("%s <%s>" % (name, email))
-    o.write("\n# $FreeBSD$\n\n")
+    o.write("\n\n")
 
     add(o, "PORTNAME", info['name'].lower())
     add(o, "PORTVERSION", info['version'])
     add(o, "CATEGORIES", "devel python")
-    add(o, "MASTER_SITES", "CHEESESHOP")
+    add(o, "MASTER_SITES", "PYPI")
     add(o, "PKGNAMEPREFIX", "${PYTHON_PKGNAMEPREFIX}")
     o.write('\n')
 
@@ -167,7 +167,12 @@
     else:
         add(o, "MAINTAINER", email)
     summary = info.get('summary', '# FILL ME')
-    add(o, "COMMENT", "{}".format(summary.capitalize().rstrip('.')))
+
+    try:
+        add(o, "COMMENT", "{}".format(summary.capitalize().rstrip('.')))
+    except:
+        add(o, "COMMENT", '# FILL ME')
+
     o.write('\n')
 
     if info.get('licfile', None):
