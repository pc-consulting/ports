# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	gpiofbsd
PORTVERSION=	g20210319
CATEGORIES=	comms python devel
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Self-contained Python GPIO access for the RPI via FreeBSD's libgpio

LICENSE=	BSD3CLAUSE

BROKEN=		Does not build yet. Just needs to install a single file though...

USES=		python:3.0+
USE_PYTHON=	autoplist distutils

USE_GITHUB=	yes
GH_ACCOUNT=	ethanlmiller
GH_PROJECT=	python-GPIOfbsd
GH_TAGNAME=	97bb12f

.include <bsd.port.mk>
