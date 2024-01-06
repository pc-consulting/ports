# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-es-sii
CATEGORIES=	finance python

COMMENT=	Tryton module that sends invoices to the spanish sii webservice
WWW=		https://docs.tryton.org/projects/modules-account-es-sii/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:net/py-zeep \
		${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
