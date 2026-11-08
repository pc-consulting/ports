# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-frq-ras
DISTVERSIONPREFIX=	v
DISTVERSION=	0.1.1
CATEGORIES=	science python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	BlueSky plugin for Frequentis ras-manager (restricted airspace)
WWW=		https://codeberg.org/pc-consulting/bluesky-plugins-frq

LICENSE=	BSD4CLAUSE
LICENSE_FILE=	${WRKDIR}/${FJ_PROJECT}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}bluesky-simulator>=1.1.1_1:science/py-bluesky-simulator@${PY_FLAVOR}

USES=		python:3.10+
USE_PYTHON=	flavors
NO_BUILD=	yes
NO_ARCH=	yes

USE_FORGEJO=	yes
FJ_ACCOUNT=	pc-consulting
FJ_PROJECT=	bluesky-plugins-frq

WRKSRC=		${WRKDIR}/${FJ_PROJECT}/plugin-frq-ras

PLUGINDIR=	share/bluesky/plugins/frq_ras
PLIST_FILES=	${PLUGINDIR}/__init__.py \
		${PLUGINDIR}/plugin.py \
		${PLUGINDIR}/schedule.py \
		${PLUGINDIR}/zone_mapping.py

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/${PLUGINDIR}
	${INSTALL_DATA} ${WRKSRC}/src/__init__.py ${WRKSRC}/src/plugin.py \
		${WRKSRC}/src/schedule.py ${WRKSRC}/src/zone_mapping.py \
		${STAGEDIR}${PREFIX}/${PLUGINDIR}/

.include <bsd.port.mk>
