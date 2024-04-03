--- src/task/import/asterix/asteriximporttask.cpp.orig	2024-04-02 14:36:06 UTC
+++ src/task/import/asterix/asteriximporttask.cpp
@@ -1331,7 +1331,9 @@ void ASTERIXImportTask::checkAllDone()
         emit COMPASS::instance().dataSourceManager().dataSourcesChangedSignal();
         COMPASS::instance().interface().saveProperties();
 
-        malloc_trim(0); // release unused memory
+        // According to https://stackoverflow.com/questions/62187219/alternative-for-malloc-trim0,
+        // we should be able to do without malloc_trim(0) per default, so let's try that.'
+        //malloc_trim(0); // release unused memory
     }
 
     logdbg << "ASTERIXImportTask: checkAllDone: done";
