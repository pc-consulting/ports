# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-project
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with projects fundamentals
WWW=		https://docs.tryton.org/en/latest/project.html

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (company, company_work_time, ir, party,
#				timesheet) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company-work-time=${PORTVERSION}:finance/py-trytond-company-work-time@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-timesheet=${PORTVERSION}:finance/py-trytond-timesheet@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
