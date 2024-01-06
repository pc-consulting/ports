# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-ldap-authentication
CATEGORIES=	finance python

COMMENT=	Tryton module to authenticate users through ldap
WWW=		https://docs.tryton.org/projects/modules-ldap-authentication/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}ldap3>=2.0.7:net/py-ldap3@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, res) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
