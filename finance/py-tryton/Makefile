# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	tryton
PORTVERSION=	7.0.2
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton desktop client
WWW=		https://docs.tryton.org/projects/client-desktop/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# 'Install' dependencies follow
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}cairo>0:graphics/py-cairo@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}gobject3>3.19:devel/py-gobject3@${PY_FLAVOR}
# 'Extras' dependencies follow
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}goocalendar>0:devel/py-goocalendar@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}playsound>0:audio/py-playsound@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
