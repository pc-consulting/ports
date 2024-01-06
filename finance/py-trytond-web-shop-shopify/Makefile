# Created by: Peter Cornelius <pcc@gmx.net>

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
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-payment=${PORTVERSION}:finance/py-trytond-account-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-customs=${PORTVERSION}:finance/py-trytond-customs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-attribute=${PORTVERSION}:finance/py-trytond-product-attribute@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-image=${PORTVERSION}:finance/py-trytond-product-image@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-image-attribute=${PORTVERSION}:finance/py-trytond-product-image-attribute@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-measurements=${PORTVERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment=${PORTVERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-discount=${PORTVERSION}:finance/py-trytond-sale-discount@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-grouping=${PORTVERSION}:finance/py-trytond-sale-invoice-grouping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-payment=${PORTVERSION}:finance/py-trytond-sale-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-secondary-unit=${PORTVERSION}:finance/py-trytond-sale-secondary-unit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping=${PORTVERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shop=${PORTVERSION}:finance/py-trytond-web-shop@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-account-payment-clearing=${PORTVERSION}:finance/py-trytond-account-payment-clearing@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
