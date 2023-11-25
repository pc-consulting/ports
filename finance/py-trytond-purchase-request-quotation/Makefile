# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-purchase-request-quotation
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for purchase request quotation
WWW=		https://docs.tryton.org/projects/modules-purchase-request-quotation/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (company, currency, ir, party,
#				product, purchase_request; extras:
#				purchase_requisition) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-request=${PORTVERSION}:finance/py-trytond-purchase-request@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-requisition=${PORTVERSION}:finance/py-trytond-purchase-requisition@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
