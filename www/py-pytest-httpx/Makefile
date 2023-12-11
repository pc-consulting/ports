# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	pytest-httpx
PORTVERSION=	0.27.0
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Send responses to httpx
WWW=		https://colin-b.github.io/pytest_httpx/

LICENSE=	MIT

# Not yet sure whether this is complete and correct:
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}httpx>=0.25.0:www/py-httpx@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytest>=7.0:devel/py-pytest@${PY_FLAVOR}
TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytest_asyncio=>7.0:devel/py-pytest-asyncio@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytest_cov>=7.0:devel/py-pytest-cov@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
