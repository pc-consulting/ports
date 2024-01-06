# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-invoice-watermark
CATEGORIES=	finance python

COMMENT=	Tryton module to add watermark to invoice
WWW=		https://docs.tryton.org/projects/modules-account-invoice-watermark/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}py-pypdf>=3:print/py-pypdf@${PY_FLAVOR} \
# Dependencies from tryton.cfg (account_invoice, ir) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
