PORTNAME=	stdnum
PORTVERSION=	2.1
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python_${PORTNAME}-${PORTVERSION}

MAINTAINER=	pi@FreeBSD.org
COMMENT=	Python module to handle standardized numbers and codes
WWW=		https://pypi.org/project/python-stdnum/

LICENSE=	LGPL21

#		Could be made optional but I want online checks.
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:net/py-zeep@${PY_FLAVOR}

# Python3 ready
USES=		python:3.8+
USE_PYTHON=	distutils autoplist

NO_ARCH=	yes

.include <bsd.port.mk>
