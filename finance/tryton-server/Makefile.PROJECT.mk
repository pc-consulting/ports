#
OPTIONS_GROUP_PROJECT=	PROJECTFUNDAMENTAL INVOICE PLAN REVENUE
OPTIONS_DEFAULT+=	PROJECTFUNDAMENTAL
PROJECT_DESC=		Operational Modules - Projects - Check Profitability
PROJECTFUNDAMENTAL_DESC=	Fundamentals for project management.
PROJECTFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-project@${PY_FLAVOR}
INVOICE_DESC=		Invoices the projects.
INVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-invoice>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-project-invoice@${PY_FLAVOR}
PLAN_DESC=		Plans the projects.
PLAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-plan>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-project-plan@${PY_FLAVOR}
REVENUE_DESC=		Follows cost and revenue of projects.
REVENUE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-revenue>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-project-revenue@${PY_FLAVOR}
