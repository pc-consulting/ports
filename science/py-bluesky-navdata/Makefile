# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-navdata
PORTVERSION=	1.0.0
CATEGORIES=	science python
# This package has no sdist on PyPI, only a wheel, so there is no
# "/packages/source/<letter>/<name>/<file>" path to derive from the
# name/version alone; MASTER_SITE_SUBDIR instead pins the real
# content-addressed files.pythonhosted.org path (with a pypi.org mirror
# fallback via the PYPI macro). Re-derive both from
# https://pypi.org/pypi/bluesky-navdata/json on every version bump.
MASTER_SITES=	PYPI
MASTER_SITE_SUBDIR=	7e/f8/9fe2c9dc86eaac07239b14b5f5b6fa2c54e91188a991e0c0b166cdce6ebe
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, distfile comes named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
EXTRACT_SUFX=	-py3-none-any.whl
# Upstream only ships this package as a pre-built, platform-independent
# wheel; there is no sdist to build from, so there is nothing for the
# default archive extraction to do (see do-build below).
EXTRACT_ONLY=	# empty

MAINTAINER=	pcc@gmx.net
COMMENT=	Open air traffic simulator -- navigation data resources
WWW=		https://pypi.org/project/bluesky-navdata/ \
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
