# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-document-incoming-ocr-typless
CATEGORIES=	finance python

COMMENT=	Tryton module that integrates typless ocr for incoming document
WWW=		https://docs.tryton.org/projects/modules-document-incoming-ocr-typless/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests@${PY_FLAVOR}
# Dependencies from tryton.cfg (currency, document_incoming,
#				document_incoming_ocr, ir, party;
#				extras: document_incoming_invoice)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-document-incoming=${PORTVERSION}:finance/py-trytond-document-incoming@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-invoice=${PORTVERSION}:finance/py-trytond-document-incoming-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-ocr=${PORTVERSION}:finance/py-trytond-document-incoming-ocr@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
