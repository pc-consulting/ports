#
OPTIONS_GROUP_PURCHASE=	PURCHASEFUNDAMENTAL PURCHASEAMENDMENT \
			PURCHASEBLANKETAGREEMENT PURCHASEHISTORY \
			INVOICELINESTANDALONE PURCHASEPRICELIST \
			PRODUCTQUANTITY REQUEST REQUESTQUOTATION \
			REQUISITION PURCHASESECONDARYUNIT \
			PURCHASESHIPMENTCOST
OPTIONS_DEFAULT+=	PURCHASEFUNDAMENTAL REQUEST
PURCHASE_DESC=		Operational Modules - Manage Your Purchases
PURCHASEFUNDAMENTAL_DESC=		Fundamentals to follow purchases.
PURCHASEFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase@${PY_FLAVOR}
PURCHASEAMENDMENT_DESC=		Amend purchases in processing.
PURCHASEAMENDMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-amendment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-amendment@${PY_FLAVOR}
PURCHASEBLANKETAGREEMENT_DESC=		Manage blanket agreements.
PURCHASEBLANKETAGREEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-blanket-agreement>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-blanket-agreement@${PY_FLAVOR}
PURCHASEHISTORY_DESC=		Manages revisions.
PURCHASEHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-history>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-history@${PY_FLAVOR}
INVOICELINESTANDALONE_DESC=		Generates invoice lines.
INVOICELINESTANDALONE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-invoice-line-standalone>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-invoice-line-standalone@${PY_FLAVOR}
PURCHASEPRICELIST_DESC=		Applies price list.
PURCHASEPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-price-list>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-price-list@${PY_FLAVOR}
PRODUCTQUANTITY_DESC=		Adds constraints on quantity purchased.
PRODUCTQUANTITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-product-quantity>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-product-quantity@${PY_FLAVOR}
REQUEST_DESC=		Collects the purchase requests.
REQUEST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-request>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-request@${PY_FLAVOR}
REQUESTQUOTATION_DESC=		Asks quotation for the purchase requests.
REQUESTQUOTATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-request-quotation>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-request-quotation@${PY_FLAVOR}
REQUISITION_DESC=		Requires purchase by employees.
REQUISITION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-requisition>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-requisition@${PY_FLAVOR}
PURCHASESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
PURCHASESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-secondary-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-secondary-unit@${PY_FLAVOR}
PURCHASESHIPMENTCOST_DESC=		Computes shipment cost.
PURCHASESHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-purchase-shipment-cost@${PY_FLAVOR}
