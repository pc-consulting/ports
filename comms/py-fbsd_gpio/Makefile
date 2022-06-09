# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	fbsd_gpio
PORTVERSION=	g20160701
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Cffi-based python bindings for freebsd gpio

LICENSE=	BSD	# Derived from setup.py

USES=		python
USE_PYTHON=	autoplist distutils

BUILD_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}cffi>=0:devel/py-cffi@${PY_FLAVOR}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}cffi>=0:devel/py-cffi@${PY_FLAVOR}

USE_GITHUB=	yes
GH_ACCOUNT=	evadot
GH_PROJECT=	fbsd_gpio_py
GH_TAGNAME=	5bb7928

.include <bsd.port.mk>
