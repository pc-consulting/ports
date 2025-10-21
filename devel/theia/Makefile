# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	theia
PORTVERSION=	1.65.2
DISTVERSIONPREFIX=	v
CATEGORIES=	devel

MAINTAINER=	pcc@gmx.net
COMMENT=	Eclipse Theia framework for IDEs
WWW=		https://github.com/eclipse-theia/theia

LICENSE=	MIT EPL GPLv2 vscode
LICENSE_COMB=	multi
#		There is a special MIT licence text for the vscode portions...
LICENSE_GROUPS_vscode=	COPYFREE FSF GPL OSI
LICENSE_NAME_vscode=	vscode's MIT license
LICENSE_FILE_vscode=	${WRKSRC}/LICENSE-vscode.txt
LICENSE_FILE_MIT=	${WRKSRC}/LICENSE-MIT.txt
LICENSE_FILE_EPL=	${WRKSRC}/LICENSE-EPL
LICENSE_FILE_GPLv2=	${WRKSRC}/LICENSE-GPL-2.0-ONLY-CLASSPATH-EXCEPTION
LICENSE_PERMS_vscode=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

RUN_DEPENDS=	node${NODEJS_VERSION}>=20<24:www/node${NODEJS_VERSION} \
		python>=3.0:lang/python3 \
		pkgconf:devel/pkgconf

USES=		gmake nodejs:run python:run

LIB_DEPENDS=	libxkbfile.so:devel/libxkbfile \
		libsecret-1.so:security/libsecret

USE_GITHUB=	yes
GH_ACCOUNT=	eclipse-theia
GH_PROJECT=	theia
#GH_TAGNAME=	d061b62

.include <bsd.port.mk>
