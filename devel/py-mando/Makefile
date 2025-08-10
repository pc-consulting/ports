# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mando
PORTVERSION=	0.8.2
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Create python cli apps with little to no effort at all!
WWW=		https://mando.readthedocs.org/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}rst2ansi>0:textproc/py-rst2ansi@${PY_FLAVOR}

USES=		python:3.3+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
