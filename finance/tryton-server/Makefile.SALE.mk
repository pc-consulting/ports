#
OPTIONS_GROUP_SALE=	SALEFUNDAMENTAL ADVANCEPAYMENT SALESAMENDMENT \
			SALESBLANKETAGREEMENT COMPLAINT CREDITLIMIT \
			DISCOUNT EXTRA GIFTCARD SALESHISTORY \
			INVOICEDATE INVOICEGROUPING OPPORTUNITY \
			SALESPAYMENT SALESPRICELIST PRODUCTCUSTOMER \
			PRODUCTQUANTITY PRODUCTRECOMMENDATION \
			PRODUCTRECOMMENDATIONRULE PROMOTION \
			PROMOTIONCOUPON PROMOTIONCOUPONPAYMENT \
			SALESHIPMENTCOST SHIPMENTGROUPING \
			SHIPMENTTOLERANCE SALESECONDARYUNIT \
			STOCKQUANTITY SALESUPPLY SUPPLYDROPSHIPMENT \
			SUPPLYPRODUCTION
OPTIONS_DEFAULT+=	SALEFUNDAMENTAL SALESUPPLY SUPPLYDROPSHIPMENT
SALE_DESC=		Operational Modules - Manage Sales and Orders
SALEFUNDAMENTAL_DESC=		Fundamentals to follow sales.
SALEFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale@${PY_FLAVOR}
ADVANCEPAYMENT_DESC=		Manage advance payment on sale.
ADVANCEPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-advance-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-advance-payment@${PY_FLAVOR}
SALESAMENDMENT_DESC=		Amend sales in processing.
SALESAMENDMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR}
SALESBLANKETAGREEMENT_DESC=		Manage sale blanket agreements.
SALESBLANKETAGREEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-blanket-agreement>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-blanket-agreement@${PY_FLAVOR}
COMPLAINT_DESC=		Solves customer complaints.
COMPLAINT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-complaint>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-complaint@${PY_FLAVOR}
CREDITLIMIT_DESC=		Adds sales to the credit limit.
CREDITLIMIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-credit-limit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-credit-limit@${PY_FLAVOR}
DISCOUNT_DESC=		Adds discount on lines.
DISCOUNT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-discount>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-discount@${PY_FLAVOR}
EXTRA_DESC=		Add extra lines.
EXTRA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-extra>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-extra@${PY_FLAVOR}
GIFTCARD_DESC=		Sales gift cards.
GIFTCARD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-gift-card>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-gift-card@${PY_FLAVOR}
SALESHISTORY_DESC=		Manages revisions.
SALESHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-history>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-history@${PY_FLAVOR}
INVOICEDATE_DESC=		Compute the date of invoice.
INVOICEDATE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-date>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-invoice-date@${PY_FLAVOR}
INVOICEGROUPING_DESC=		Groups invoices.
INVOICEGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-grouping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-invoice-grouping@${PY_FLAVOR}
OPPORTUNITY_DESC=		Tracks leads and opportunities.
OPPORTUNITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-opportunity>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-opportunity@${PY_FLAVOR}
SALESPAYMENT_DESC=		Pays sales before posting the invoice.
SALESPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-payment@${PY_FLAVOR}
SALESPRICELIST_DESC=		Applies price list.
SALESPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-price-list>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-price-list@${PY_FLAVOR}
PRODUCTCUSTOMER_DESC=		Adds customer’s name and code for product.
PRODUCTCUSTOMER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-customer>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-product-customer@${PY_FLAVOR}
PRODUCTQUANTITY_DESC=		Adds constraints on quantity sold.
PRODUCTQUANTITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-quantity>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-product-quantity@${PY_FLAVOR}
PRODUCTRECOMMENDATION_DESC=		Recommends products.
PRODUCTRECOMMENDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-recommendation>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-product-recommendation@${PY_FLAVOR}
PRODUCTRECOMMENDATIONRULE_DESC=		Recommends products based on association rules.
PRODUCTRECOMMENDATIONRULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-recommendation-association-rule>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-product-recommendation-association-rule@${PY_FLAVOR}
PROMOTION_DESC=		Applies promotions.
PROMOTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-promotion@${PY_FLAVOR}
PROMOTIONCOUPON_DESC=	Applies promotions with coupons.
PROMOTIONCOUPON_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion-coupon>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-promotion-coupon@${PY_FLAVOR}
PROMOTIONCOUPONPAYMENT_DESC=		Count coupon per identical payment party.
PROMOTIONCOUPONPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion-coupon-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-promotion-coupon-payment@${PY_FLAVOR}
SALESHIPMENTCOST_DESC=		Computes shipment cost.
SALESHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}
SHIPMENTGROUPING_DESC=		Groups shipments.
SHIPMENTGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-grouping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-grouping@${PY_FLAVOR}
SHIPMENTTOLERANCE_DESC=		Define tolerance for under and over shipment.
SHIPMENTTOLERANCE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-tolerance>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-tolerance@${PY_FLAVOR}
SALESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
SALESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-secondary-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-secondary-unit@${PY_FLAVOR}
STOCKQUANTITY_DESC=		Checks stock level.
STOCKQUANTITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-stock-quantity>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-stock-quantity@${PY_FLAVOR}
SALESUPPLY_DESC=		Supplies from the sale.
SALESUPPLY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-supply@${PY_FLAVOR}
SUPPLYDROPSHIPMENT_DESC=	Supplies with drop shipment.
SUPPLYDROPSHIPMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-drop-shipment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-supply-drop-shipment@${PY_FLAVOR}
SUPPLYPRODUCTION_DESC=		Supplies with production.
SUPPLYPRODUCTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-production>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-supply-production@${PY_FLAVOR}
