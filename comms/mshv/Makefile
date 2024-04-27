# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mshv
PORTVERSION=	2.74
CATEGORIES=	comms hamradio
# SF pull still inoperable as-is, as mshv appears not to properly use version subdirs
# Current workaround is to pull manually from
# https://sourceforge.net/projects/mshv/files/MSHV_274_Full_Source_Code.zip/download
# and place insto DISTDIR (/usr/ports/distfile per default)
MASTER_SITES=	SF
DISTNAME=	MSHV_${PORTVERSION:S/.//g}_Full_Source_Code

MAINTAINER=	pcc@gmx.net
COMMENT=	Ham radio digimode software for FT8, and many others
WWW=		http://lz2hv.org/mshv

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/license.txt

# Dependencies from python package
#RUN_DEPENDS=
LIB_DEPENDS=	libasound.so:audio/alsa-lib \
		libfftw3.so:math/fftw3 \
		libpulse-simple.so:audio/pulseaudio

USES=		qmake:outsource qt:5 zip
USE_GCC=	yes:build
USE_QT=		gui qmake widgets

WRKSRC=		${WRKDIR}/${DISTNAME:C/_.*//g}_${PORTVERSION:S/.//g}/
# QMAKE does not find the pro file and complains, no idea why.
#QMAKE_SOURCE_PATH=	${WRKSRC}
# There is a recipe for FreeBSD !!
QMAKE_ARGS+=	MSHV_FreeBSD_amd64.pro

.include <bsd.port.mk>
