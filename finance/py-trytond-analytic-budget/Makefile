# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-analytic-budget
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module that allows creating budgets for analytic accounts
WWW=		https://docs.tryton.org/projects/modules-analytic-budget/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_budget, analytic_account,
#				company)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account-budget=${PORTVERSION}:finance/py-trytond-account-budget@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-analytic-account=${PORTVERSION}:finance/py-trytond-analytic-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
