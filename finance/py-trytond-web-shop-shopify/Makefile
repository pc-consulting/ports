# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-web-shop-shopify
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Module to integrate tryton with shopify

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}ShopifyAPI>0:XXX/py-ShopifyAPI \
			${PYTHON_PKGNAMEPREFIX}pyactiveresource>0:XXX/py-pyactiveresource \
			${PYTHON_PKGNAMEPREFIX}python-sql>0:XXX/py-python-sql \
			${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
