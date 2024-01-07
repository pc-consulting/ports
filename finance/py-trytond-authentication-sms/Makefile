# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-authentication-sms
CATEGORIES=	finance security comms python

COMMENT=	Tryton module to authenticate users via sms
WWW=		https://docs.tryton.org/projects/modules-authentication-sms/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, res) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
