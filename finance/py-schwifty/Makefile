# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	schwifty
PORTVERSION=	2023.10.0
CATEGORIES=	finance devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Library to work with IBANs and BICs as specified by the ISO
WWW=		https://github.com/mdomke/schwifty

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}importlib-resources>0:devel/py-importlib-resources@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}iso3166>0:textproc/py-iso3166@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pycountry>0:textproc/py-pycountry@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pydantic2>0:devel/py-pydantic2@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
