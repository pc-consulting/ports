#
OPTIONS_GROUP_COMPANY=	COMPANYFUNDAMENTAL WORKTIME
OPTIONS_DEFAULT+=	COMPANYFUNDAMENTAL WORKTIME
COMPANY_DESC=		Referential Modules - Structure of the Company
COMPANYFUNDAMENTAL_DESC=	Defines company and employees.
COMPANYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR}
WORKTIME_DESC=		Defines work time per company.
WORKTIME_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-company-work-time=${PORTVERSION}:finance/py-trytond-company-work-time@${PY_FLAVOR}
