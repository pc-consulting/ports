#
OPTIONS_GROUP_WEBSHOP=	SHOP SHOPPRODUCTDATAFEED SHOPSHOPIFY \
			SHOPVUESTOREFRONT SHOPVUESTOREFRONTSTRIPE \
			SHORTENER USER
OPTIONS_DEFAULT+=	SHOP SHORTENER USER
WEBSHOP_DESC=	Web and Webshop-Related Modules - Various
SHOP_DESC=		Fundamentals to sale online.
SHOP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop@${PY_FLAVOR}
SHOPPRODUCTDATAFEED_DESC=		Publish product data feed for markets.
SHOPPRODUCTDATAFEED_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-product-data-feed>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop-product-data-feed@${PY_FLAVOR}
SHOPSHOPIFY_DESC=		Integration with Shopify.
SHOPSHOPIFY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-shopify>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop-shopify@${PY_FLAVOR}
SHOPVUESTOREFRONT_DESC=		Integration with Vue Storefront.
SHOPVUESTOREFRONT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-vue-storefront>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop-vue-storefront@${PY_FLAVOR}
SHOPVUESTOREFRONTSTRIPE_DESC=		Support of Stripe Payment for Vue Storefront.
SHOPVUESTOREFRONTSTRIPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-vue-storefront-stripe>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shop-vue-storefront-stripe@${PY_FLAVOR}
SHORTENER_DESC=		Shortens URL and connects them to actions.
SHORTENER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shortener>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-shortener@${PY_FLAVOR}
USER_DESC=		Manages external users.
USER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-user>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-web-user@${PY_FLAVOR}
