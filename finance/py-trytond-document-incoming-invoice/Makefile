# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-document-incoming-invoice
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to manage incoming invoice document
WWW=		https://docs.tryton.org/projects/modules-document-incoming/en/latest/index.html

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_invoice, document_incoming,
#				ir, party) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-document-incoming=${PORTVERSION}:finance/py-trytond-document-incoming@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
