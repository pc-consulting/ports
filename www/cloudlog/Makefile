PORTNAME=	cloudlog
DISTVERSION=	2.6.6
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

do-install:
	@${MKDIR} ${STAGEDIR}${WWWDIR}
	@cd ${WRKSRC} && ${COPYTREE_SHARE} \* ${STAGEDIR}${WWWDIR}
        # TODO:
	# Create /usr/local/etc/nginx/nginx.conf if not there, copy sample otherwise
	# Copy sample cloudlog.conf.sample if not there, copy sample otherwise to /usr/local/etc/nginx/conf.d/
	# Enable php_fpm if not yet active
	# Create /usr/local/etc/php.ini if not there, copy sample otherwise
	# Enable database if not yet active
	# Run database initialization if selected by user
	# Adjust pkg-message output accordingly.
	#${INSTALL_DATA} files/nginx.conf files/cloudlog.conf
	#
#post-patch:
	#@${REINPLACE_CMD} -e 's|/usr/local|${PREFIX}|g' ${WRKSRC}/Makefile
	#
#.for i in ${FAQ_DIR}
#	@${MKDIR} ${STAGEDIR}${WWWDIR}/${i}
#.endfor

.include <bsd.port.mk>
