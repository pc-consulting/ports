# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	efficient-apriori
PORTVERSION=	2.0.6
CATEGORIES=	devel math python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, the distfile come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

#		# Any takers welcome...
MAINTAINER=	pcc@gmx.net
COMMENT=	Efficient python implementation of the apriori algorithm
WWW=		https://github.com/tommyod/Efficient-Apriori

LICENSE=	MIT

USES=		python:3.9+
USE_PYTHON=	autoplist pep517

.include <bsd.port.mk>
