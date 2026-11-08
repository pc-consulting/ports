BlueSky's own plugin search path is always a subdirectory of the
per-user workdir (${HOME}/bluesky/plugins when pip-installed), since
pathfinder.init() only ever inserts that one directory into
bluesky.plugins' namespace-package search locations. There is no way
for a FreeBSD port (installing as root, to PREFIX) to drop files into
a future user's $HOME at install time, so third-party BlueSky plugin
ports (science/py-bluesky-frq-*, and any future one) would otherwise
require the user to manually copy or symlink files into their workdir
after every install.

Also scan a fixed, package-manager-installable location,
${PREFIX}/share/bluesky/plugins (hardcoded here as /usr/local/share/...
and corrected to the real ${PREFIX} by this port's post-patch target),
so such ports can drop their plugin files in with zero per-user
configuration. Guarded by is_dir() so a BlueSky install with no plugin
ports installed does not pay for scanning a nonexistent directory.

--- bluesky/pathfinder.py.orig	2026-11-08 00:00:00 UTC
+++ bluesky/pathfinder.py
@@ -152,5 +152,12 @@
     plugins = import_module('bluesky.plugins')
     plugins.__spec__.submodule_search_locations.insert(0, workdir.joinpath('plugins').as_posix())

+    # Also scan a fixed, package-manager-installable location, so
+    # third-party plugin packages can be dropped in without any
+    # per-user configuration.
+    sysplugindir = Path('/usr/local/share/bluesky/plugins')
+    if sysplugindir.is_dir():
+        plugins.__spec__.submodule_search_locations.insert(0, sysplugindir.as_posix())
+
     # Set correct search paths for resource function
     resource.path = ResourcePath(workdir)
