# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-currency
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with currencies

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil \
			${PYTHON_PKGNAMEPREFIX}argcomplete>0:XXX/py-argcomplete \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
