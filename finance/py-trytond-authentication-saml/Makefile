# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-authentication-saml
CATEGORIES=	finance security python

COMMENT=	Tryton module to authenticate users via saml
WWW=		https://docs.tryton.org/projects/modules-authentication-saml/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pysaml2>0:security/py-pysaml2@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
