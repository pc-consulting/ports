# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-frq-traffic-telemetry
DISTVERSIONPREFIX=	v
DISTVERSION=	0.1.1
CATEGORIES=	science python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	BlueSky plugin for Frequentis telemetry-manager (position reports)
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

WRKSRC=		${WRKDIR}/${FJ_PROJECT}/plugin-frq-traffic-telemetry

PLUGINDIR=	share/bluesky/plugins/frq_traffic_telemetry
PLIST_FILES=	${PLUGINDIR}/__init__.py \
		${PLUGINDIR}/identification.py \
		${PLUGINDIR}/plugin.py \
		${PLUGINDIR}/position_report.py

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/${PLUGINDIR}
	${INSTALL_DATA} ${WRKSRC}/src/__init__.py ${WRKSRC}/src/identification.py \
		${WRKSRC}/src/plugin.py ${WRKSRC}/src/position_report.py \
		${STAGEDIR}${PREFIX}/${PLUGINDIR}/

.include <bsd.port.mk>
