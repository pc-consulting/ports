#
OPTIONS_GROUP_CARRIER=	CARRIERFUNDAMENTAL CARRIAGE PERCENTAGE \
			SUBDIVISION WEIGHT
OPTIONS_DEFAULT+=	CARRIERFUNDAMENTAL
CARRIER_DESC=		Referential Modules - Shipping
CARRIERFUNDAMENTAL_DESC=	Fundamentals to manage carriers.
CARRIERFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier@${PY_FLAVOR}
CARRIAGE_DESC=		Supports multiple carriers per document.
CARRIAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-carriage>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier-carriage@${PY_FLAVOR}
PERCENTAGE_DESC=	Computes cost based on percentage.
PERCENTAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-percentage>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier-percentage@${PY_FLAVOR}
SUBDIVISION_DESC=		Restricts the usage of a carrier to subdivisions and ZIP codes.
SUBDIVISION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-subdivision>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier-subdivision@${PY_FLAVOR}
WEIGHT_DESC=		Computes cost based on weight.
WEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-weight>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier-weight@${PY_FLAVOR}
