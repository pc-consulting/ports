# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mtcnn
PORTVERSION=	0.1.1
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Multi-task cascaded convolutional neural networks for face detection, based on tensorflow

LICENSE=	MIT	# According to https://github.com/ipazc/mtcnn

# keras depends on tensorflow which is broken, cannot build, nor test anything here.
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}keras>=2.0.0:math/py-keras \
		${PYTHON_PKGNAMEPREFIX}opencv>=4.1.0:graphics/opencv
		# How can one check that an option is set in a package, and force it set when rebuilding it?
		# i. e. can I depend on the python option set in opencv? Or, at least, complain if not?

USES=		python:3.4+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
