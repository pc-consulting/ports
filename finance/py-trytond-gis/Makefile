# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-gis
CATEGORIES=	finance geography python # science?? -- nah...

COMMENT=	Adds geographic information system support to trytond
WWW=		https://docs.tryton.org/projects/backend-gis/en/latest

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}geomet>0:science/py-geomet@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}psycopg2>2.0.14:databases/py-psycopg2@${PY_FLAVOR}
# No dependencies from tryton.cfg
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
