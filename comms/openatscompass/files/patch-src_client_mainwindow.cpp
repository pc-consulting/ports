--- src/client/mainwindow.cpp.orig	2024-02-29 09:52:46 UTC
+++ src/client/mainwindow.cpp
@@ -64,7 +64,7 @@
 #include "createassociationstask.h"
 #include "createassociationstaskdialog.h"
 
-#ifdef USE_EXPERIMENTAL_SOURCE
+#if USE_EXPERIMENTAL_SOURCE == true
 #include "geometrytreeitem.h"
 #include "test_lab.h"
 #endif
@@ -1040,7 +1040,7 @@ void MainWindow::resetViewsMenuSlot()
 
         COMPASS::instance().filterManager().resetToStartupConfiguration();
 
-#ifdef USE_EXPERIMENTAL_SOURCE
+#if USE_EXPERIMENTAL_SOURCE == true
         GeometryTreeItem::clearHiddenIdentifierStrs(); // clears hidden layers
 #endif
 
@@ -1261,7 +1261,7 @@ void MainWindow::createDebugMenu()
     auto debug_menu = menuBar()->addMenu("Debug");
 
     //add test lab entries
-    #ifdef USE_EXPERIMENTAL_SOURCE
+    #if USE_EXPERIMENTAL_SOURCE == true
     {
         TestLabCollection().appendTestLabs(debug_menu);
     }
