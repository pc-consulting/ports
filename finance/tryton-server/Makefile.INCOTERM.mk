#
OPTIONS_GROUP_INCOTERM=	INCOTERMFUNDAMENTAL
INCOTERM_DESC=		Referential Modules - Define Incoterms
INCOTERMFUNDAMENTAL_DESC=	Manage the Incoterms on Sales, Purchases and Shipments
INCOTERMFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-incoterm>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-incoterm@${PY_FLAVOR}
