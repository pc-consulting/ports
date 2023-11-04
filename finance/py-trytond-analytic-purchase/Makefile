# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-analytic-purchase
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to add analytic accounting on purchase

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
