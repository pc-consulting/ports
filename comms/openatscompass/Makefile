# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	openatscompass
PORTVERSION=	0.7.5
DISTVERSIONPREFIX=	v
CATEGORIES=	comms

MAINTAINER=	pcc@gmx.net
COMMENT=	ATC surveillance data analysis, visualization & evaluation framework
WWW=		https://github.com/hpuhr/compass

LICENSE=	GPLv3

USES=		cmake
# Distfile download fails if GH_PROJECT is set to upper case but
# sources stubbornly extract to the wor subdir with upper case only.
# I therefore see no other way than fiddling with WRKSRC here.
WRKSRC=		${WRKDIR}/COMPASS-${PORTVERSION}

USE_GITHUB=	yes
GH_ACCOUNT=	hpuhr
GH_PROJECT=	compass
GH_TAGNAME=	v${PORTVERSION}

.include <bsd.port.mk>
