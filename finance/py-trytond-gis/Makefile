# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-gis
PORTVERSION=	7.0.0
CATEGORIES=	finance geography python # science?? -- nah...
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Adds geographic information system support to trytond
WWW=		https://docs.tryton.org/projects/backend-gis/en/latest

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}geomet>0:science/py-geomet@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
