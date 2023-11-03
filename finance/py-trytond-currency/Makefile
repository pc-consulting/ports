# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-currency
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with currencies

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil \
			${PYTHON_PKGNAMEPREFIX}argcomplete>0:XXX/py-argcomplete \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
