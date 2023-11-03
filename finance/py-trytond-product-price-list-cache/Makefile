# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-product-price-list-cache
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to cache price lists

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:XXX/py-python-sql

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
