# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-production-work-timesheet
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for timesheet on production work
WWW=		https://docs.tryton.org/projects/modules-production-work-timesheet/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, production_routing,
#				production_work, timesheet)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production-routing=${PORTVERSION}:finance/py-trytond-production-routing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production-work=${PORTVERSION}:finance/py-trytond-production-work@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-timesheet=${PORTVERSION}:finance/py-trytond-timesheet@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
