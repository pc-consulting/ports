PORTNAME=	arduino-serial-monitor
DISTVERSIONPREFIX=	v
DISTVERSION=	0.15.0
CATEGORIES=	comms devel

MAINTAINER=	pcc@gmx.net
COMMENT=	Serial pluggable monitor tool for arduino-cli
WWW=		https://github.com/arduino/serial-monitor

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules
GO_MODULE=	github.com/arduino/serial-monitor

PLIST_FILES=	bin/arduino-serial-monitor

post-patch:
	${REINPLACE_CMD} -E 's~var osPortFilter = regexp\.MustCompile\(.*\)~var osPortFilter = regexp.MustCompile("^cuaU[0-9]+$$")~' \
		${WRKSRC}/vendor/go.bug.st/serial/serial_freebsd.go

.include <bsd.port.mk>
