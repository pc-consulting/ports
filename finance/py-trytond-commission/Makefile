# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-commission
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for commission

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}simpleeval>0:XXX/py-simpleeval \
			${PYTHON_PKGNAMEPREFIX}python-sql>0:XXX/py-python-sql \
			${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil \
			${PYTHON_PKGNAMEPREFIX}pygal>0:XXX/py-pygal

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>