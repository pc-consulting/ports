# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	mshv
PORTVERSION=	2.76.3
CATEGORIES=	comms hamradio
# SF pull still inoperable as-is, as mshv appears not to properly use version subdirs
MASTER_SITES=	https://sourceforge.net/projects/mshv/files/
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
		libpulse-simple.so:audio/pulseaudio \
		libpulse.so:audio/pulseaudio

USES=		gl qmake qt:5 zip
USE_GCC=	yes
USE_GL=		opengl
USE_QT=		buildtools:build core gui network opengl qmake:build websockets widgets

SUB_FILES=	pkg-message
SUB_LIST=	EXAMPLESDIR=${EXAMPLESDIR}

WRKSRC=		${WRKDIR}/${PORTNAME:tu}_${PORTVERSION:S/.//g}
# QMAKE does not find the pro file and complains, no idea why.
#QMAKE_SOURCE_PATH=	${WRKSRC}
# There is a recipe for FreeBSD !!
QMAKE_ARGS+=	${WRKSRC}/MSHV_FreeBSD_amd64.pro

#		Note that moving MSHV_FreeBSD_amd64 is a hack to use ${COPYTREE_SHARE} later.
pre-install::	${MKDIR} ${STAGEDIR}/${PREFIX}/bin/
		${INSTALL_PROGRAM} ${WRKSRC}/bin/MSHV_FreeBSD_amd64 ${STAGEDIR}/${PREFIX}/bin/
		${RM} ${WRKSRC}/bin/MSHV_FreeBSD_amd64
		( cd  ${STAGEDIR}/${PREFIX}/bin/ && ${LN} -s MSHV_FreeBSD_amd64 mshv )
		${MKDIR} ${STAGEDIR}/${EXAMPLESDIR}
		( cd ${WRKSRC}/bin/ && ${COPYTREE_SHARE} . ${STAGEDIR}/${EXAMPLESDIR}/ )

.include <bsd.port.mk>
