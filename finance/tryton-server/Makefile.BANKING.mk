#
OPTIONS_GROUP_BANKING=	BANK
OPTIONS_DEFAULT+=	BANK
BANKING_DESC=		Referential Modules - Banks and Accounts
BANK_DESC=		Adds bank and account.
BANK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-bank>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-bank@${PY_FLAVOR}
