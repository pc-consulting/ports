# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-guidata
PORTVERSION=	1.0.1
CATEGORIES=	science python
# This package has no sdist on PyPI, only a wheel, so there is no
# "/packages/source/<letter>/<name>/<file>" path to derive from the
# name/version alone; MASTER_SITE_SUBDIR instead pins the real
# content-addressed files.pythonhosted.org path (with a pypi.org mirror
# fallback via the PYPI macro). Re-derive both from
# https://pypi.org/pypi/bluesky-guidata/json on every version bump.
MASTER_SITES=	PYPI
MASTER_SITE_SUBDIR=	9e/92/1d7ed0b41a3d19134cbc0b8c7d8c09ad3d104173b374581f5ac4cb6e0bac
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, distfile comes named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
EXTRACT_SUFX=	-py3-none-any.whl
# Upstream only ships this package as a pre-built, platform-independent
# wheel; there is no sdist to build from, so there is nothing for the
# default archive extraction to do (see do-build below).
EXTRACT_ONLY=	# empty

MAINTAINER=	pcc@gmx.net
COMMENT=	Open air traffic simulator -- GUI resources
WWW=		https://pypi.org/project/bluesky-guidata/ \
		https://github.com/TUDelft-CNS-ATM/bluesky

LICENSE=	GPLv3

USES=		python:3.10+
USE_PYTHON=	autoplist pep517
WRKSRC=		${WRKDIR}
NO_ARCH=	yes

# The wheel is just a zip file full of data; hand it directly to the
# standard USE_PYTHON=pep517 installer instead of running a real build.
do-build:
	@${MKDIR} ${WRKSRC}/dist
	@${CP} ${_DISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${WRKSRC}/dist/

.include <bsd.port.mk>
