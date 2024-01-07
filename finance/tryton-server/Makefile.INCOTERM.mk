#
OPTIONS_GROUP_INCOTERM=	INCOTERMFUNDAMENTAL
INCOTERM_DESC=		Referential Modules - Define Incoterms
INCOTERMFUNDAMENTAL_DESC=	Manage the Incoterms on Sales, Purchases and Shipments
# NOTE incoterm currently deviates in its PORTVERSION, hence relaxed check
INCOTERMFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-incoterm>=${PORTVERSION}:finance/py-trytond-incoterm@${PY_FLAVOR}
