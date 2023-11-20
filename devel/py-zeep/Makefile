# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	zeep
PORTVERSION=	4.2.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	A python soap client

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}attrs>=17.2.0:devel/py-attrs \
			${PYTHON_PKGNAMEPREFIX}isodate>=0.5.4:devel/py-isodate \
			${PYTHON_PKGNAMEPREFIX}lxml>=4.6.0:devel/py-lxml \
			${PYTHON_PKGNAMEPREFIX}platformdirs>=1.4.0:devel/py-platformdirs \
			${PYTHON_PKGNAMEPREFIX}requests>=2.7.0:www/py-requests \
			${PYTHON_PKGNAMEPREFIX}requests-toolbelt>=0.7.1:www/py-requests-toolbelt \
			${PYTHON_PKGNAMEPREFIX}requests-file>=1.5.1:www/py-requests-file \
			${PYTHON_PKGNAMEPREFIX}pytz>0:devel/py-pytz \
			${PYTHON_PKGNAMEPREFIX}pytest-httpx>0:XXX/py-pytest-httpx \
			${PYTHON_PKGNAMEPREFIX}pytest-asyncio>0:devel/py-pytest-asyncio

USES=		python:3.7+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
