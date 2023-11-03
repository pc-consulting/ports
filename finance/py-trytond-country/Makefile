# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-country
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with countries

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:XXX/py-python-sql \
			${PYTHON_PKGNAMEPREFIX}argcomplete>0:XXX/py-argcomplete \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry \
			${PYTHON_PKGNAMEPREFIX}pycountry>0:XXX/py-pycountry

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
