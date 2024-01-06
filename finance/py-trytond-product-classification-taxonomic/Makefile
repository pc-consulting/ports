# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-product-classification-taxonomic
CATEGORIES=	finance python

COMMENT=	Tryton module to implement product classification taxonomic
WWW=		https://docs.tryton.org/projects/modules-product-classification-taxonomic/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product_classification) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-classification=${PORTVERSION}:finance/py-trytond-product-classification@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
