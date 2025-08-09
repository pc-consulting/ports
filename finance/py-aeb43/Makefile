# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	aeb43
PORTVERSION=	0.1.1
CATEGORIES=	finance python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Parser for AEB43 files
WWW=		https://pypi.org/project/aeb43/

LICENSE=	BSD
#LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}stdnum>0:devel/py-stdnum@${PY_FLAVOR}
# No test dependencies from python package

USES=		python:3.8+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
