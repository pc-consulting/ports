# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-web-shop-shopify
CATEGORIES=	finance www python

COMMENT=	Module to integrate tryton with shopify
WWW=		https://docs.tryton.org/projects/modules-web-shop-shopify/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}shopifyapi>0:finance/py-shopifyapi@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyactiveresource>0:finance/py-pyactiveresource@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}python-sql>0:databases/py-python-sql@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR}
# Dependencies from tryton.cfg (account_payment, currency, ir, party,
#				product, product_attribute, sale,
#				sale_amendment, sale_payment, stock,
#				web_shop; extras: customs,
#				product_image,
#				product_image_attribute,
#				product_measurements, sale_discount,
#				sale_invoice_grouping,
#				sale_secondary_unit,
#				sale_shipment_cost,
#				stock_package_shipping) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-customs>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-customs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-attribute>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product-attribute@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-image>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product-image@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-image-attribute>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product-image-attribute@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-measurements>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-discount>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-discount@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-grouping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-invoice-grouping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-secondary-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-secondary-unit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shop>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-account-payment-clearing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-clearing@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
