# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-marketing-email
CATEGORIES=	finance python

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

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
