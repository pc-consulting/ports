# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mtcnn
PORTVERSION=	1.0.0
CATEGORIES=	graphics math devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Multi-task cascaded convolutional neural networks for face detection
WWW=		https://github.com/ipazc/mtcnn

LICENSE=	MIT	# According to https://github.com/ipazc/mtcnn

#		Note that tensorflow may take ages to build.
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}joblib>=1.4.2:devel/py-joblib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}lz4>=4.3.3:archivers/py-lz4@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}tensorflow>=2.12.0:science/py-tensorflow@${PY_FLAVOR}
# Test dependencies from setup.py (dev) -- partially require higher versions
# than in ports (devel/py-pytest), or even non-existent there yet (py-mkdocs-jupyter)
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytest>=8.3.30:devel/py-pytest@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest-cov>=5.0.0:devel/py-pytest-cov@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}mkdocs>=1.6.1:textproc/py-mkdocs@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}mkdocs-material>=9.5.39:textproc/py-mkdocs-material@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}mkdocs-jupyter>=0.25.0:textproc/py-mkdocs-jupyter@${PY_FLAVOR}

USES=		python:3.10+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
