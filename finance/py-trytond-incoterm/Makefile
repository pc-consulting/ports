# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-incoterm
PORTVERSION=	7.0.1
CATEGORIES=	finance python

COMMENT=	Tryton module for incoterms
WWW=		https://docs.tryton.org/projects/modules-incoterm/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (company, ir, party; extras:
#				account_invoice, account_invoice_stock,
#				carrier, purchase,
#				purchase_request_quotation, sale,
#				sale_opportunity, sale_shipment_cost,
#				sale_shipment_grouping, stock,
#				stock_package_shipping) # ir: trytond built-in
#		NOTE that ${PORTVERSION:S/1/0/g} is a stupid hack for
#		the time being since there's no incoterm-7.0.0
#		available but other ports depend on this one
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION:S/1/0/g}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION:S/1/0/g}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock=${PORTVERSION:S/1/0/g}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION:S/1/0/g}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION:S/1/0/g}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION:S/1/0/g}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION:S/1/0/g}:finance/py-trytond-purchase@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-request-quotation=${PORTVERSION:S/1/0/g}:finance/py-trytond-purchase-request-quotation@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION:S/1/0/g}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-opportunity=${PORTVERSION:S/1/0/g}:finance/py-trytond-sale-opportunity@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION:S/1/0/g}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-grouping=${PORTVERSION:S/1/0/g}:finance/py-trytond-sale-shipment-grouping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION:S/1/0/g}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping=${PORTVERSION:S/1/0/g}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION:S/1/0/g}:finance/py-trytond-account@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-grouping=${PORTVERSION:S/1/0/g}:finance/py-trytond-sale-invoice-grouping@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
