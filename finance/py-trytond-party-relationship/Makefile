# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-party-relationship
CATEGORIES=	finance python

COMMENT=	Party relationship module for tryton
WWW=		https://docs.tryton.org/projects/modules-party-relationship/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>=0.4:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (party)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
