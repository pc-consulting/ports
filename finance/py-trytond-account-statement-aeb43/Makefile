# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-statement-aeb43
CATEGORIES=	finance spanish python

COMMENT=	Tryton module to import aeb43 statements
WWW=		https://docs.tryton.org/projects/modules-account-statement-aeb43/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}stdnum>0:devel/py-stdnum@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}csb43>0.8:finance/py-csb43@${PY_FLAVOR}
# Dependencies from tryton.cfg (account_statement, bank, ir) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-bank=${PORTVERSION}:finance/py-trytond-bank@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
