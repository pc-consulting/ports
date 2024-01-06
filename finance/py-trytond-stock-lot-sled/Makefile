# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-lot-sled
CATEGORIES=	finance python

COMMENT=	Tryton module for shelf life expiration date of product lots
WWW=		https://docs.tryton.org/projects/modules-stock-lot-sled/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=		${PYTHON_PKGNAMEPREFIX}python-sql>=0.5:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, product, stock, stock_lot)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-lot=${PORTVERSION}:finance/py-trytond-stock-lot@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
