# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	csb43
PORTVERSION=	1.0.0
CATEGORIES=	finance python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Spanish banks' csb norm 43 converter to ofx, and others
WWW=		https://bitbucket.org/wmj/csb43

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/LICENSE

# 		FIXME 'reuse' is juste reuse, or py-reuse at pypi.org??
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycountry>=24.6.1,<25.0.0:textproc/py-pycountry@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}deprecated>=1.2.14,<=2.0.0:devel/py-deprecated@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}tablib>=3.6.1,<=4.0.0:textproc/py-tablib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}build>0:devel/py-build@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}sphinx>0:textproc/py-sphinx@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyyaml>0:devel/py-pyyaml@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}lxml>0:devel/py-lxml@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest>0:devel/py-pytest@${PY_FLAVOR}

USES=		python:3.6+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
