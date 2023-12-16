--- setup.py.orig	2021-12-01 14:36:32 UTC
+++ setup.py
@@ -52,18 +52,18 @@ setup(
     # "scripts" keyword. Entry points provide cross-platform support and allow
     # `pip` to create the appropriate form of executable for the target
     # platform.
-    data_files = [('/share/bluesky/data', [f for f in glob.glob('data/**/*') if path.isfile(f)
+    data_files = [('share/bluesky/data', [f for f in glob.glob('data/**/*') if path.isfile(f)
                   and path.basename(f) not in ('world.16384x8192.dds',
                                                'world.8192x4096.dds')] + ['data/default.cfg']),
-                  ('/share/bluesky/plugins', [f for f in glob.glob('plugins/*.py') if path.isfile(f)]),
-                  ('/share/bluesky/utils', [f for f in glob.glob('utils/**/*') if path.isfile(f)])],
+                  ('share/bluesky/plugins', [f for f in glob.glob('plugins/*.py') if path.isfile(f)]),
+                  ('share/bluesky/utils', [f for f in glob.glob('utils/**/*') if path.isfile(f)])],
     entry_points={
         'console_scripts': [
             'bluesky=BlueSky:main',
         ],
     },
 
-    scripts=['BlueSky_pygame.py'],
+    scripts=['BlueSky_pygame.py', 'BlueSky.py', 'check.py'],
 
     project_urls={
         'Source': 'https://github.com/ProfHoekstra/bluesky',
