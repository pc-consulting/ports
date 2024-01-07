#
OPTIONS_GROUP_MARKETING=	MARKETINGFUNDAMENTAL AUTOMATION \
				CAMPAIGN EMAIL
OPTIONS_DEFAULT+=	MARKETINGFUNDAMENTAL
MARKETING_DESC=		Operational Modules - Marketing - Communicate with Your Customers
MARKETINGFUNDAMENTAL_DESC=		Fundamentals for marketing.
MARKETINGFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing@${PY_FLAVOR}
AUTOMATION_DESC=	Uses scenario.
AUTOMATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-automation>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing-automation@${PY_FLAVOR}
CAMPAIGN_DESC=		Manage campaign.
CAMPAIGN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-campaign>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing-campaign@${PY_FLAVOR}
EMAIL_DESC=		Manage mailing lists.
EMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-email>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing-email@${PY_FLAVOR}
