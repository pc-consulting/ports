# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	braintree
PORTVERSION=	4.25.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Braintree python library
WWW=		https://developer.paypal.com/braintree/docs/reference/overview

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests<3.0,>=0.11.1:www/py-requests@${PY_FLAVOR}

USES=		python:3.5+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
