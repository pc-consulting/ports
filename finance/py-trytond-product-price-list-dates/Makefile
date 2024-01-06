# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-product-price-list-dates
CATEGORIES=	finance python

COMMENT=	Tryton module to add dates on price list
WWW=		https://docs.tryton.org/projects/modules-product-price-list-dates/en/latest

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product_price_list;
#				extras: product_price_list_cache,
#				sale_price_list) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-price-list=${PORTVERSION}:finance/py-trytond-product-price-list@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-cache=${PORTVERSION}:finance/py-trytond-product-price-list-cache@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-price-list=${PORTVERSION}:finance/py-trytond-sale-price-list@${PY_FLAVOR}
# No further dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
