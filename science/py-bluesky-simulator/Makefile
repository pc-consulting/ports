# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-simulator
PORTVERSION=	1.1.1
CATEGORIES=	science python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, distfile comes named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Open air traffic simulator
WWW=		https://github.com/TUDelft-CNS-ATM/bluesky

# As of 1.1.1 upstream relicensed the simulator core to MIT; the separate
# navdata/guidata resource packages remain GPLv3 (see science/py-bluesky-
# navdata and science/py-bluesky-guidata).
LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

# Two small C++ extensions (geo math, state-based conflict detection) are
# compiled at build time through a hatchling build hook that drives
# setuptools' build_ext; hatch-vcs resolves the static version already
# recorded in the sdist's PKG-INFO (there is no .git checkout to probe).
BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}hatchling>0:devel/py-hatchling@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}hatch-vcs>0:devel/py-hatch-vcs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}setuptools>0:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}numpy>0:math/py-numpy@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>0:math/py-numpy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}scipy>0:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}matplotlib>0:math/py-matplotlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pandas>0:math/py-pandas@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}msgpack>=1.0.0:devel/py-msgpack@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyzmq>0:net/py-pyzmq@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}openap>0:science/py-openap@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}bluesky-navdata>0:science/py-bluesky-navdata@${PY_FLAVOR}

USES=		compiler:c++11-lang python:3.11+
USE_PYTHON=	autoplist pep517

OPTIONS_DEFINE=		CONSOLE PYGAME QT6
OPTIONS_DEFAULT=	CONSOLE
CONSOLE_DESC=	Text console UI (textual)
PYGAME_DESC=	Pygame-based graphical UI
QT6_DESC=	Qt6+OpenGL graphical UI (needs science/py-bluesky-guidata)

CONSOLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}textual>0:textproc/py-textual@${PY_FLAVOR}
PYGAME_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}game>0:devel/py-game@${PY_FLAVOR}
QT6_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}qt6-pyqt>0:devel/py-qt6-pyqt@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}qt6-webengine>0:www/py-qt6-webengine@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}PyOpenGL>0:graphics/py-PyOpenGL@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}PyOpenGL-accelerate>0:graphics/py-PyOpenGL-accelerate@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}bluesky-guidata>0:science/py-bluesky-guidata@${PY_FLAVOR}

.include <bsd.port.mk>
