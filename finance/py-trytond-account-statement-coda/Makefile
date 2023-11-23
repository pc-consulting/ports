# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-statement-coda
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to import coda statements
WWW=		https://docs.tryton.org/projects/modules-account-statement-coda/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}febelfin-coda>0:finance/py-febelfin-coda@${PY_FLAVOR}
# Dependencies from tryton.cfg (account_statement, bank, ir) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-bank=${PORTVERSION}:finance/py-trytond-bank@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
