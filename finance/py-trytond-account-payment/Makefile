# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-payment
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for payment
WWW=		https://docs.tryton.org/projects/modules-account-payment/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account, company, currency, ir,
#				party, res; extras: account_dunning,
#				account_invoice, account_statement)
#				ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-dunning=${PORTVERSION}:finance/py-trytond-account-dunning@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
