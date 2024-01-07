#
OPTIONS_GROUP_TIMESHEET=	TIMESHEETFUNDAMENTAL COST
OPTIONS_DEFAULT+=	TIMESHEETFUNDAMENTAL
TIMESHEET_DESC=		Operational Modules - Track Time Spent
TIMESHEETFUNDAMENTAL_DESC=		Fundamentals to track time spent.
TIMESHEETFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-timesheet=${PORTVERSION}:finance/py-trytond-timesheet@${PY_FLAVOR}
COST_DESC=		Tracks employee cost.
COST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-timesheet-cost=${PORTVERSION}:finance/py-trytond-timesheet-cost@${PY_FLAVOR}
