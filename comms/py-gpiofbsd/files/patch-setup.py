--- setup.py.orig	2023-01-05 22:25:18 UTC
+++ setup.py
@@ -0,0 +1,13 @@
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
