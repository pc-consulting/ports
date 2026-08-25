PORTNAME=	arduino-cli
DISTVERSIONPREFIX=	v
DISTVERSION=	1.5.1
CATEGORIES=	devel

MAINTAINER=	pcc@gmx.net
COMMENT=	Arduino command-line interface
WWW=		https://arduino.github.io/arduino-cli/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules

USE_GITHUB=	yes
GH_ACCOUNT=	arduino
GH_PROJECT=	arduino-cli

GO_MODULE=	github.com/arduino/arduino-cli@v${DISTVERSION}
GO_TARGET=	./:arduino-cli

PLIST_FILES=	bin/arduino-cli

.include <bsd.port.mk>
