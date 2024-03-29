# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	jasterix
PORTVERSION=	0.1.1
DISTVERSIONPREFIX=	v
CATEGORIES=	comms

MAINTAINER=	pcc@gmx.net
COMMENT=	C++ Library for EUROCONTROL's ASTERIX to JSON conversion.
WWW=		https://github.com/hpuhr/jASTERIX

LICENSE=	GPLv3

LIB_DEPENDS=	libboost_program_options.so:devel/boost-libs \
		liblog4cpp.so:devel/log4cpp \
		libarchive.so:archivers/libarchive \
		libtbb.so:devel/tbb \
		libCatch2.so:devel/catch2
RUN_DEPENDS=	nlohmann-json>0:devel/nlohmann-json

USES=		cmake ssl

USE_GITHUB=	yes
GH_ACCOUNT=	hpuhr
GH_PROJECT=	jASTERIX
GH_TAGNAME=	v${PORTVERSION}

.include <bsd.port.mk>
