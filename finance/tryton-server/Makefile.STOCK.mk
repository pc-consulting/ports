#
OPTIONS_GROUP_STOCK=	STOCKFUNDAMENTAL ASSIGNMANUAL CONSIGNMENT \
			FORECAST INVENTORYLOCATION LOCATIONMOVE \
			LOCATIONSEQUENCE LOT \
			LOTSHELFLIFEEXPIRATIONDATE LOTUNIT PACKAGE \
			PACKAGESHIPPING PACKAGESHIPPINGDPD \
			PACKAGESHIPPINGMYGLS PACKAGESHIPPINGSENDCLOUD \
			PACKAGESHIPPINGUPS PRODUCTLOCATION \
			QUANTITYEARLYPLANNING QUANTITYISSUE \
			STOCKSECONDARYUNIT STOCKSHIPMENTCOST \
			STOCKSHIPMENTCOSTWEIGHT SHIPMENTMEASUREMENTS \
			STOCKSPLIT STOCKSUPPLY SUPPLYFORECAST \
			SUPPLYDAY SUPPLYPRODUCTION
OPTIONS_DEFAULT+=	STOCKFUNDAMENTAL LOT
STOCK_DESC=		Operational Modules - Track Goods in Your Warehouses
STOCKFUNDAMENTAL_DESC=		Fundamentals to manage warehouses.
STOCKFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock@${PY_FLAVOR}
ASSIGNMANUAL_DESC=		Manually decide where to pick products.
ASSIGNMANUAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-assign-manual>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-assign-manual@${PY_FLAVOR}
CONSIGNMENT_DESC=		Manages consignment stock from supplier or at customer warehouse.
CONSIGNMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-consignment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-consignment@${PY_FLAVOR}
FORECAST_DESC=		Forecast the stock levels.
FORECAST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-forecast>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-forecast@${PY_FLAVOR}
INVENTORYLOCATION_DESC=		Creates inventories for many locations.
INVENTORYLOCATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-inventory-location>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-inventory-location@${PY_FLAVOR}
LOCATIONMOVE_DESC=		Makes location movable.
LOCATIONMOVE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-location-move>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-location-move@${PY_FLAVOR}
LOCATIONSEQUENCE_DESC=		Orders locations.
LOCATIONSEQUENCE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-location-sequence>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-location-sequence@${PY_FLAVOR}
LOT_DESC=		Track products with lot.
LOT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-lot@${PY_FLAVOR}
LOTSHELFLIFEEXPIRATIONDATE_DESC=	Manages expiration dates.
LOTSHELFLIFEEXPIRATIONDATE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot-sled>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-lot-sled@${PY_FLAVOR}
LOTUNIT_DESC=		Defines unit and quantity per lot.
LOTUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-lot-unit@${PY_FLAVOR}
PACKAGE_DESC=		Store packaging on shipments.
PACKAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package@${PY_FLAVOR}
PACKAGESHIPPING_DESC=	Fundamentals to interact with shipping services.
PACKAGESHIPPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR}
PACKAGESHIPPINGDPD_DESC=	Connects with DPD shipping service.
PACKAGESHIPPINGDPD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-dpd>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping-dpd@${PY_FLAVOR}
PACKAGESHIPPINGMYGLS_DESC=		Connects with MyGLS shipping service.
PACKAGESHIPPINGMYGLS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-mygls>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping-mygls@${PY_FLAVOR}
PACKAGESHIPPINGSENDCLOUD_DESC=		Connects to the Sendcloud shipping service.
PACKAGESHIPPINGSENDCLOUD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-sendcloud>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping-sendcloud@${PY_FLAVOR}
PACKAGESHIPPINGUPS_DESC=	Connects with UPS shipping service.
PACKAGESHIPPINGUPS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-ups>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping-ups@${PY_FLAVOR}
PRODUCTLOCATION_DESC=		Defines preferred locations for products.
PRODUCTLOCATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-product-location>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-product-location@${PY_FLAVOR}
QUANTITYEARLYPLANNING_DESC=		Consume earlier stock.
QUANTITYEARLYPLANNING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-quantity-early-planning>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-quantity-early-planning@${PY_FLAVOR}
QUANTITYISSUE_DESC=		Reports quantity issues.
QUANTITYISSUE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-quantity-issue>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-quantity-issue@${PY_FLAVOR}
STOCKSECONDARYUNIT_DESC=	Reports quantity issues.
STOCKSECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-secondary-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-secondary-unit@${PY_FLAVOR}
STOCKSHIPMENTCOST_DESC=		Adds shipment costs to outgoing moves.
STOCKSHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-shipment-cost@${PY_FLAVOR}
STOCKSHIPMENTCOSTWEIGHT_DESC=		Set shipment costs based on weight.
STOCKSHIPMENTCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost-weight>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-shipment-cost-weight@${PY_FLAVOR}
SHIPMENTMEASUREMENTS_DESC=		Adds measurements to shipments.
SHIPMENTMEASUREMENTS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-measurements>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-shipment-measurements@${PY_FLAVOR}
STOCKSPLIT_DESC=	Splits moves and shipments.
STOCKSPLIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-split>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-split@${PY_FLAVOR}
STOCKSUPPLY_DESC=		Supplies warehouses.
STOCKSUPPLY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-supply@${PY_FLAVOR}
SUPPLYDAY_DESC=		Compute supply date per week day.
SUPPLYDAY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-day>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-supply-day@${PY_FLAVOR}
SUPPLYFORECAST_DESC=		Uses forecast to supply warehouses.
SUPPLYFORECAST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-forecast>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-supply-forecast@${PY_FLAVOR}
SUPPLYPRODUCTION_DESC=		Supplies warehouses with production orders.
SUPPLYPRODUCTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-production>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-supply-production@${PY_FLAVOR}
