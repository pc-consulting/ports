# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	shopifyapi
PORTVERSION=	12.3.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, some kind of creative distfile naming
DISTNAME=	ShopifyAPI-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Shopify api for python
WWW=		https://github.com/Shopify/shopify_python_api

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

INSTALL_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pyactiveresource>-2.2.2:finance/py-pyactiveresource@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}jwt>=2.0.0:www/py-pyjwt@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}yaml>0:devel/py-yaml@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}six>0:devel/py-six@${PY_FLAVOR}

USES=		python:3.7+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
