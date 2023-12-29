# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-authentication-saml
PORTVERSION=	7.0.0
CATEGORIES=	finance security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to authenticate users via saml
WWW=		https://docs.tryton.org/projects/modules-authentication-saml/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pysaml2>0:security/py-pysaml2@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# No test dependencies from python package

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
