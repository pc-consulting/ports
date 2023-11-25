# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-analytic-sale
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to add analytic accounting on sale
WWW=		https://docs.tryton.org/projects/modules-analytic-sale/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (analytic_account, analytic_invoice, sale)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-account=${PORTVERSION}:finance/py-trytond-analytic-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-analytic-invoice=${PORTVERSION}:finance/py-trytond-analytic-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
