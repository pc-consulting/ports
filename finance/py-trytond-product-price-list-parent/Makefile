# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-product-price-list-parent
CATEGORIES=	finance python

COMMENT=	Tryton module to use price from another price list
WWW=		https://docs.tryton.org/projects/modules-product-price-list-parent/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product_price_list) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-price-list=${PORTVERSION}:finance/py-trytond-product-price-list@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
