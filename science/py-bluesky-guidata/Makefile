# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-guidata
PORTVERSION=	2022.9.15
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, distfile comes named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
EXTRACT_SUFX=	-py2.py3-none-any.whl

MAINTAINER=	pcc@gmx.net
COMMENT=	The open air traffic simulator - gui resources
WWW=		https://pypi.org/project/bluesky-guidata/

LICENSE=	GPLv3

USES=		python:3.7+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
