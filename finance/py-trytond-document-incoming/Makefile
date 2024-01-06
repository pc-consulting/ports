# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-document-incoming
CATEGORIES=	finance python

COMMENT=	Tryton module to manage incoming documents
#		There seems to be no dedicated user documentation for this module.
WWW=		https://docs.tryton.org/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pypdf>=3:print/py-pypdf@${PY_FLAVOR}
# Dependencies from tryton.cfg (company, ir, res, extra: inbound_email) # ir, res:trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-inbound-email=${PORTVERSION}:finance/py-trytond-inbound-email@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
