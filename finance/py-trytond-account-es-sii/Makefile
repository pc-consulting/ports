# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-es-sii
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module that sends invoices to the spanish sii webservice

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:XXX/py-zeep \
			${PYTHON_PKGNAMEPREFIX}requests>0:XXX/py-requests

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
