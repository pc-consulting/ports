# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-marketing-email
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to manage marketing mailing lists
WWW=		https://docs.tryton.org/projects/modules-marketing-email/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, marketing, party, res, web_user,
#				web_shortener) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-marketing=${PORTVERSION}:finance/py-trytond-marketing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-user=${PORTVERSION}:finance/py-trytond-web-user@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shortener=${PORTVERSION}:finance/py-trytond-web-shortener@${PY_FLAVOR}
# No test dependencies from python package

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
