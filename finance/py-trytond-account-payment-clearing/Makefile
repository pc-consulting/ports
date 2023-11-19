# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-payment-clearing
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for payment clearing
WWW=		https://docs.tryton.org/projects/modules-account-payment-clearing/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account, account_payment, ir;
#				extras: account_statement,
#				account_statement_rule)
#				ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-payment=${PORTVERSION}:finance/py-trytond-account-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-statement-rule=${PORTVERSION}:finance/py-trytond-account-statement-rule@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
