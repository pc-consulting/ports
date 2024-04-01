# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	openatscompass
PORTVERSION=	0.7.5
DISTVERSIONPREFIX=	v
CATEGORIES=	comms

MAINTAINER=	pcc@gmx.net
COMMENT=	ATC surveillance data analysis, visualization & evaluation framework
WWW=		https://github.com/hpuhr/compass

LICENSE=	GPLv3

LIB_DEPENDS=	libboost_regex.so:devel/boost-libs \
		libsqlite3.so:databases/sqlite3 \
		liblog4cpp.so:devel/log4cpp \
		libgdal.so:graphics/gdal \
		libtbb.so:devel/onetbb
BUILD_DEPENDS=	jasterix>=0.1.1:comms/jASTERIX
RUN_DEPENDS=	eigen3>=3.2:math/eigen3 \
		jasterix>=0.1.1:comms/jASTERIX

USES=		cmake qt:5 ssl libarchive
USE_QT=		widgets core opengl charts testlib
# Distfile download fails if GH_PROJECT is set to upper case but
# sources stubbornly extract to the wor subdir with upper case only.
# I therefore see no other way than fiddling with WRKSRC here.
WRKSRC=		${WRKDIR}/COMPASS-${PORTVERSION}

USE_GITHUB=	yes
GH_ACCOUNT=	hpuhr
GH_PROJECT=	compass
GH_TAGNAME=	v${PORTVERSION}

.include <bsd.port.mk>
