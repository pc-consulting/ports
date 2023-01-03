--- setup.py.orig	2023-01-03 10:58:48 UTC
+++ setup.py
@@ -0,0 +1,15 @@
+#!/usr/bin/env python
+
+from distutils.core import setup
+
+setup(name='GPIOfbsd',
+   version='g20210319',
+   description='RPI GPIO access via FreeBSD libgpio',
+   author='Ethan L. Miller',
+   author_email='elm@ucsc.edu',
+   url='https://github.com/ethanlmiller/python-GPIOfbsd',
+   py_modules = ['GPIOfbsd', 'GPIOfbsd_test'],
+   package_data = {'': ['LICENSE', 'README.md'] }
+   )
+
+#py_modules = ['GPIOfbsd.py', 'GPIOfbsd_test.py', 'LICENSE', 'README.md']
