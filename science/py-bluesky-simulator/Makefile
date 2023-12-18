# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	bluesky-simulator
PORTVERSION=	2023.11.22
CATEGORIES=	science python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Open air traffic simulator
WWW=		https://github.com/TUDelft-CNS-ATM/bluesky

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}check-manifest>0:devel/py-check-manifest@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>0:math/py-numpy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}calver>0:devel/py-calver@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}scipy>0:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}matplotlib>0:math/py-matplotlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyzmq>0:net/py-pyzmq@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pandas>0:math/py-pandas@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}textual>0:textproc/py-textual@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}game>0:devel/py-game@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL>0:graphics/py-PyOpenGL@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL-accelerate>0:graphics/py-PyOpenGL-accelerate@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}qt5>0:devel/py-qt5@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}qt6>0:devel/py-qt6@${PY_FLAVOR}
#			${PYTHON_PKGNAMEPREFIX}bluesky-simdata>0:science/py-bluesky-simdata@${PY_FLAVOR} \
#			${PYTHON_PKGNAMEPREFIX}bluesky-guidata>0:science/py-bluesky-guidata@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}qt5-webengine>0:www/py-qt5-webengine@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}qt6-webengine>0:www/py-qt6-webengine@${PY_FLAVOR}
TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}coverage>0:devel/py-coverage@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}flake8>0:devel/py-flake8@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}radon>0:devel/py-radon@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}nose>0:devel/py-nose@${PY_FLAVOR}

USES=		python:3.7+
USE_PYTHON=	autoplist distutils
USE_PYQT5=	webengine opengl
USE_PYQT6=	webengine opengl

.include <bsd.port.mk>
