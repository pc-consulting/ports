# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-credit-limit
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for sale credit limit
WWW=		https://docs.tryton.org/projects/modules-sale-credit-limit/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_credit_limit,
#				account_invoice, company, currency,
#				ir, sale) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-credit-limit=${PORTVERSION}:finance/py-trytond-account-credit-limit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
