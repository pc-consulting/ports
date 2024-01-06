# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-project-plan
CATEGORIES=	finance python

COMMENT=	Tryton module to add planning capabilities on projects
WWW=		https://docs.tryton.org/projects/modules-project-plan/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (company, ir, project, timesheet) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-project=${PORTVERSION}:finance/py-trytond-project@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-timesheet=${PORTVERSION}:finance/py-trytond-timesheet@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
