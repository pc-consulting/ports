# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-party
CATEGORIES=	finance python

COMMENT=	Tryton module with parties and addresses
WWW=		https://docs.tryton.org/en/latest/party.html

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>=0.4:databases/py-python-sql@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}stdnum>=1.19:devel/py-stdnum@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}phonenumbers>0:devel/py-phonenumbers@${PY_FLAVOR}
# Dependencies from tryton.cfg (country, ir, res) # ir, res:trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-country>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-country@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
