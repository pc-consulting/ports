# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	tryton-filestore-s3
PORTVERSION=	0.2.1
# # DISTNAME back to normal, not an 'official' Tryton port
DISTNAME?=	${PORTNAME}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
CATEGORIES=	finance www python

COMMENT=	S3 AWS backend for the Tryton application framework
WWW=		https://github.com/gcoop-libre/tryton-filestore-s3

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}boto3>0:www/py-boto3@${PY_FLAVOR}
# trytond dependency actually is for > 4.2
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
