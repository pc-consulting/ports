# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-product-customer
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to manage customer product on sale
WWW=		https://docs.tryton.org/projects/modules-sale-product-customer/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product, sale; extras:
#				sale_amendment,
#				sale_blanket_agreement) # ir: trytond built-in
#		NOTE incoterm currently deviates in its PORTVERSION, hence relaxed check
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment=${PORTVERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-blanket-agreement=${PORTVERSION}:finance/py-trytond-sale-blanket-agreement@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
