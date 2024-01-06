# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-product-customer
CATEGORIES=	finance python

COMMENT=	Tryton module to manage customer product on sale
WWW=		https://docs.tryton.org/projects/modules-sale-product-customer/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product, sale; extras:
#				sale_amendment,
#				sale_blanket_agreement) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment=${PORTVERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-blanket-agreement=${PORTVERSION}:finance/py-trytond-sale-blanket-agreement@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
