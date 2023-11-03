# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-stock-package-shipping-sendcloud
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Sendcloud connector for the tryton application platform

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>0:XXX/py-requests

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>