#
OPTIONS_GROUP_PRODUCTION=	PRODUCTIONFUNDAMENTAL OUTSOURCING \
				ROUTING PRODUCTIONSPLIT WORK \
				WORKTIMESHEET
OPTIONS_DEFAULT+=	PRODUCTIONFUNDAMENTAL
PRODUCTION_DESC=	Operational Modules - Production - Transform Raw Materials into Finished Products
PRODUCTIONFUNDAMENTAL_DESC=		Fundamentals for production management.
PRODUCTIONFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production@${PY_FLAVOR}
OUTSOURCING_DESC=		Outsources the production.
OUTSOURCING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-outsourcing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production-outsourcing@${PY_FLAVOR}
ROUTING_DESC=		Defines routings.
ROUTING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-routing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production-routing@${PY_FLAVOR}
PRODUCTIONSPLIT_DESC=	Split production orders.
PRODUCTIONSPLIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-split>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production-split@${PY_FLAVOR}
WORK_DESC=		Manage work order for each production.
WORK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-work>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production-work@${PY_FLAVOR}
WORKTIMESHEET_DESC=		Track time per work.
WORKTIMESHEET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-work-timesheet>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-production-work-timesheet@${PY_FLAVOR}
