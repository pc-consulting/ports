--- main.go.orig
+++ main.go
@@ -18,10 +18,18 @@
 package main
 
 /*
-#cgo CPPFLAGS: -DHAVE_UNISTD_H -DHAVE_NANOSLEEP -DHAVE_ERR -I. -Idfu-util-0.11/src -I/usr/local/include/libusb-1.0 -Wall
-#cgo CFLAGS: -DHAVE_UNISTD_H -DHAVE_NANOSLEEP -DHAVE_ERR -I. -Idfu-util-0.11/src -I/usr/local/include/libusb-1.0 -Wall
+#cgo CPPFLAGS: -DHAVE_UNISTD_H -DHAVE_NANOSLEEP -DHAVE_ERR -I. -Idfu-util-0.11/src -Wall
+#cgo CFLAGS: -DHAVE_UNISTD_H -DHAVE_NANOSLEEP -DHAVE_ERR -I. -Idfu-util-0.11/src -Wall
+// FreeBSD ships its own libusb(3) in base: header at /usr/include/libusb.h
+// (no libusb-1.0/ subdirectory) and the library is named libusb, not
+// libusb-1.0. See libusb(3). Every other platform keeps the original
+// -I/usr/local/include/libusb-1.0 + -lusb-1.0 arrangement.
+#cgo !freebsd CPPFLAGS: -I/usr/local/include/libusb-1.0
+#cgo !freebsd CFLAGS: -I/usr/local/include/libusb-1.0
 #cgo darwin LDFLAGS: -L/usr/local/lib -lusb-1.0 -framework IOKit -framework CoreFoundation -framework Security
-#cgo !darwin LDFLAGS: -L/usr/local/lib -lusb-1.0
+#cgo linux LDFLAGS: -L/usr/local/lib -lusb-1.0
+#cgo windows LDFLAGS: -L/usr/local/lib -lusb-1.0
+#cgo freebsd LDFLAGS: -lusb
 
 #include <dfu.h>
 #include <dfu_util.h>
