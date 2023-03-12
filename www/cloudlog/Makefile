PORTNAME=	cloudlog
DISTVERSION=	2.4
CATEGORIES=	www hamradio databases
PKGNAMEPREFIX=	${PHP_PKGNAMEPREFIX}
#MASTER_SITES=	

MAINTAINER=	pcc@gmx.net
COMMENT=	Run your own feature-rich online amateur radio logbook
WWW=		https://www.magicbug.co.uk/cloudlog/

LICENSE=	MIT

RUN_DEPENDS=	${LOCALBASE}/sbin/nginx:www/nginx:>=1.2

#WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		mysql php
USE_GITHUB=	YES
GH_ACCOUNT=	magicbug
GH_PROJECT=	Cloudlog
GH_TAGNAME=	${DISTVERSION}
USE_PHP=	ctype curl filter mbstring mysqli session simplexml xml zlib
#FAQ_DIR=	attachments data images inc pdf xml
NO_BUILD=	YES
NO_ARCH=	YES

# Portlint & make choke on this if, no idea. For most, this likely is irrelevant, anyways, so...
#.if ${OSVERSION} < 1200000
#BROKEN=		Sorry, below FreeBSD 12, you're on your own...
#.endif

#do-install:
#	@${MKDIR} ${STAGEDIR}${WWWDIR}
#	@cd ${WRKSRC} && ${COPYTREE_SHARE} \* ${STAGEDIR}${WWWDIR}
#.for i in ${FAQ_DIR}
#	@${MKDIR} ${STAGEDIR}${WWWDIR}/${i}
#.endfor

.include <bsd.port.mk>
