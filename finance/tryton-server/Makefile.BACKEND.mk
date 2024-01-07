#
OPTIONS_GROUP_BACKEND=	GIS
# FIXME check whether we need some sort of postgis dependency
OPTIONS_DEFAULT+=	GIS
BACKEND_DESC=		Tryton Backend
GIS_DESC=		Adds GIS support to Tryton.
GIS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-gis=${PORTVERSION}:finance/py-trytond-gis@${PY_FLAVOR}
