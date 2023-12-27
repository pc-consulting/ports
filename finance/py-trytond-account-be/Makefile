# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-be
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with belgian chart of accounts
WWW=		https://docs.tryton.org/projects/modules-account-be/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account, account_eu;
#				extras: account_assist,
#				account_deposit,
#				sale_advance_payment)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-asset=${PORTVERSION}:finance/py-trytond-account-asset@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-eu=${PORTVERSION}:finance/py-trytond-account-eu@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-deposit=${PORTVERSION}:finance/py-trytond-account-deposit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-advance-payment=${PORTVERSION}:finance/py-trytond-sale-advance-payment@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
