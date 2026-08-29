PORTNAME=	arduino-ide
DISTVERSION=	2.3.10
CATEGORIES=	devel editors

MAINTAINER=	pcc@gmx.net
COMMENT=	Arduino integrated development environment 2.x
WWW=		https://www.arduino.cc/en/software/

LICENSE=	AGPLv3

RUN_DEPENDS=	arduino-cli:devel/arduino-cli \
		arduino-fwuploader:devel/arduino-fwuploader \
		arduino-language-server:devel/arduino-language-server

USES=		electron:42,build,run gmake llvm:min=14,run npm:yarn1,build \
		nodejs:20 python:build desktop-file-utils

USE_GITHUB=	yes
GH_ACCOUNT=	arduino
GH_PROJECT=	arduino-ide
GH_TAGNAME=	${DISTVERSION}

SUB_FILES=	arduino-ide
SUB_LIST=	DATADIR=${DATADIR} \
		ELECTRON_VER_MAJOR=${ELECTRON_VER_MAJOR} \
		LLVM_PREFIX=${LLVM_PREFIX}

MAKE_ENV=	ELECTRON_OVERRIDE_DIST_PATH=${LOCALBASE}/share/electron${ELECTRON_VER_MAJOR} \
		ELECTRON_SKIP_BINARY_DOWNLOAD=1 \
		ELECTRON_VERSION=${ELECTRON_VER} \
		HOME=${WRKDIR} \
		PATH=${WRKSRC}/node_modules/.bin:${WRKSRC}/arduino-ide-extension/node_modules/.bin:${LOCALBASE}/bin:${LLVM_PREFIX}/bin:${PATH} \
		PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=true \
		PUPPETEER_SKIP_DOWNLOAD=true \
		PYTHON=${PYTHON_CMD} \
		SASS_FORCE_BUILD=true \
		USE_SYSTEM_APP_BUILDER=true \
		npm_config_build_from_source=true

DATADIR=	${PREFIX}/share/${PORTNAME}

PLIST_FILES=	bin/arduino-ide \
		share/applications/arduino-ide.desktop \
		share/pixmaps/arduino-ide.png

pre-build:
		${MKDIR} ${WRKSRC}/arduino-ide-extension/src/node/resources
		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} yarn install --frozen-lockfile
		${RM} -rf ${WRKSRC}/node_modules/electron/dist
		${RLN} ${LOCALBASE}/share/electron${ELECTRON_VER_MAJOR} \
			${WRKSRC}/node_modules/electron/dist
		${PATCH} -d ${WRKSRC} -p0 < ${FILESDIR}/theia-ffmpeg-lib-ffmpeg.js.patch
		${PATCH} -d ${WRKSRC} -p0 < ${FILESDIR}/theia-ffmpeg-native-linux-ffmpeg.c.patch
		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} yarn build

do-build:
		cd ${WRKSRC}/electron-app && \
		${SETENV} ${MAKE_ENV} ${PACKAGE_ENV} yarn package

do-install:
		${MKDIR} ${STAGEDIR}${DATADIR}
		cd ${WRKSRC}/electron-app/dist/linux-unpacked && \
			${COPYTREE_SHARE} resources ${STAGEDIR}${DATADIR}
		${INSTALL_SCRIPT} ${WRKDIR}/arduino-ide ${STAGEDIR}${PREFIX}/bin
		${MKDIR} ${STAGEDIR}${PREFIX}/share/applications
		${INSTALL_DATA} ${FILESDIR}/arduino-ide.desktop \
			${STAGEDIR}${PREFIX}/share/applications
		${MKDIR} ${STAGEDIR}${PREFIX}/share/pixmaps
		${INSTALL_DATA} ${WRKSRC}/electron-app/resources/icons/512x512.png \
			${STAGEDIR}${PREFIX}/share/pixmaps/arduino-ide.png

post-install:
		@cd ${STAGEDIR}${PREFIX} && \
			${FIND} share/${PORTNAME} -type f -o -type l | \
			${SORT} >> ${TMPPLIST}
		@cd ${STAGEDIR}${PREFIX} && \
			${FIND} share/${PORTNAME} -type d -empty -exec \
			${ECHO_CMD} '@dir {}' \; >> ${TMPPLIST}

.include <bsd.port.mk>
