# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-web-shop-vue-storefront-stripe
CATEGORIES=	finance www python

COMMENT=	Tryton module to support stripe payment with vue storefront
WWW=		https://docs.tryton.org/projects/modules-web-shop-vue-storefront-stripe/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_payment_stripe, ir,
#				sale_payment, web_shop,
#				web_shop_vue_storefront)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-payment-stripe=${PORTVERSION}:finance/py-trytond-account-payment-stripe@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-payment=${PORTVERSION}:finance/py-trytond-sale-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shop=${PORTVERSION}:finance/py-trytond-web-shop@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shop-vue-storefront=${PORTVERSION}:finance/py-trytond-web-shop-vue-storefront@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
