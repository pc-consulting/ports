PORTNAME=	arduino-dfu-discovery
DISTVERSIONPREFIX=	v
DISTVERSION=	0.1.2
CATEGORIES=	comms devel

MASTER_SITES=	http://dfu-util.sourceforge.net/releases/:dfuutil
DISTFILES=	dfu-util-0.11.tar.gz:dfuutil

MAINTAINER=	pcc@gmx.net
COMMENT=	DFU pluggable discovery tool for arduino-cli
WWW=		https://github.com/arduino/dfu-discovery

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules
GO_MODULE=	github.com/arduino/dfu-discovery

PLIST_FILES=	bin/arduino-dfu-discovery

post-extract:
	${TAR} -xf ${GO_GOPATH}/${DISTNAME}/dfu-util-0.11.tar.gz -C ${WRKSRC}
	${CP} ${WRKSRC}/dfu-util-0.11/src/dfuse_mem.c ${WRKSRC}/dfu-util_dfuse_mem.c
	${CP} ${WRKSRC}/dfu-util-0.11/src/dfu_util.c ${WRKSRC}/dfu-util_dfu_util.c
	${CP} ${WRKSRC}/dfu-util-0.11/src/quirks.c ${WRKSRC}/dfu-util_quirks.c
	${CHMOD} 644 ${WRKSRC}/dfu-util_quirks.c

.include <bsd.port.mk>
