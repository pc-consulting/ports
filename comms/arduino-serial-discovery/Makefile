PORTNAME=	arduino-serial-discovery
DISTVERSIONPREFIX=	v
DISTVERSION=	1.5.2
CATEGORIES=	comms devel

MAINTAINER=	pcc@gmx.net
COMMENT=	Serial port pluggable discovery tool for arduino-cli
WWW=		https://github.com/arduino/serial-discovery

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules
GO_MODULE=	github.com/arduino/serial-discovery

PLIST_FILES=	bin/arduino-serial-discovery

post-patch:
	${REINPLACE_CMD} -E 's~var osPortFilter = regexp\.MustCompile\(.*\)~var osPortFilter = regexp.MustCompile("^cuaU[0-9]+$$")~' \
		${WRKSRC}/vendor/go.bug.st/serial/serial_freebsd.go
	${CP} ${FILESDIR}/usb_freebsd.go \
		${WRKSRC}/vendor/go.bug.st/serial/enumerator/usb_freebsd.go

.include <bsd.port.mk>
