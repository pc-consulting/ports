# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mando
PORTVERSION=	0.7.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Create python cli apps with little to no effort at all!
WWW=		https://mando.readthedocs.org/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>0:devel/py-six@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}argparse>0:devel/py-argparse@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}funcsigs>0:devel/py-funcsigs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}rst2ansi>0:textproc/py-rst2ansi@${PY_FLAVOR}

USES=		python:3.1+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
