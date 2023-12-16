#

PORTNAME=	bluesky
#DISTVERSIONPREFIX=	v
DISTVERSION=	g20211201
CATEGORIES=	science python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	BlueSky - The Open Air Traffic Simulator by TU Delft's J. Hoekstra et. al.

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}game>=2:devel/py-game@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}msgpack>=1:devel/py-msgpack@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL>=3.1.0:graphics/py-PyOpenGL@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL-accelerate>=3.1.0:graphics/py-PyOpenGL-accelerate@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}matplotlib>=3.4:math/py-matplotlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pandas>=1.2:math/py-pandas@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyzmq>=22:net/py-pyzmq@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}scipy>=1.6:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}qt5-opengl>=5:x11/py-qt5-opengl@${PY_FLAVOR}
RUN_DEPENDS=	${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}game>=2:devel/py-game@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}msgpack>=1:devel/py-msgpack@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL>=3.1.0:graphics/py-PyOpenGL@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL-accelerate>=3.1.0:graphics/py-PyOpenGL-accelerate@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}matplotlib>=3.4:math/py-matplotlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pandas>=1.2:math/py-pandas@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyzmq>=22:net/py-pyzmq@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}scipy>=1.6:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}qt5-opengl>=5:x11/py-qt5-opengl@${PY_FLAVOR}

USES=		python:3.6+
USE_PYTHON=	distutils autoplist
USE_PYQT5=	webengine opengl

USE_GITHUB=	yes
GH_ACCOUNT=	TUDelft-CNS-ATM
GH_PROJECT=	bluesky
GH_TAGNAME=	8382e60

NO_ARCH=	yes

#do-configure:
#		cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
#			${PYTHON_CMD} check.py

.include <bsd.port.mk>
