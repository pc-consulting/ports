# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-dunning-email
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for account dunning email
WWW=		https://docs.tryton.org/projects/modules-account-dunning-email/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (account_dunning, account_dunning_letter,
#				ir, party) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-dunning=${PORTVERSION}:finance/py-trytond-account-dunning@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-letter=${PORTVERSION}:finance/py-trytond-account-dunning-letter@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
