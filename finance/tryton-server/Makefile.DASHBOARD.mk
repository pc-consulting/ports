#
OPTIONS_GROUP_DASHBOARD=	DASHBOARDFUNDAMENTAL
OPTIONS_DEFAULT+=	DASHBOARDFUNDAMENTAL
DASHBOARD_DESC=		Referential Modules - Customized Dashboard
DASHBOARDFUNDAMENTAL_DESC=	Customized dashboard.
DASHBOARDFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-dashboard>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-dashboard@${PY_FLAVOR}