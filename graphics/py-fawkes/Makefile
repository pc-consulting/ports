# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	fawkes
PORTVERSION=	1.0.4
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Utility to protect user privacy
WWW=		https://sandlab.cs.uchicago.edu/fawkes/

LICENSE=	BSD3CLAUSE	# According to https://github.com/Shawn-Shan/fawkes

# tensorflow is broken, cannot build, nor test anything here.
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>=1.19.5:math/py-numpy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}tensorflow>=2.4.1:science/py-tensorflow@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}keras>=2.4.3:math/py-keras@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}mtcnn>0:graphics/py-mtcnn@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pillow>=7.0.0:graphics/py-pillow@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}bleach>=2.1.0:www/py-bleach@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
