PORTNAME=	arduino-ide
DISTVERSION=	2.3.10
CATEGORIES=	devel editors
MASTER_SITES=	https://downloads.arduino.cc/vscode-arduino-tools/:arduino_tools \
		https://downloads.arduino.cc/marus25.cortex-debug/:cortex_debug \
		https://downloads.arduino.cc/cores/staging/:avrcore \
		https://github.com/dankeboy36/vscode-arduino-api/releases/download/0.1.2/:arduino_api \
		https://github.com/espressif/arduino-esp32/releases/download/3.1.3/:espcore \
		https://open-vsx.org/api/vscode/cpp/1.88.1/file/:vscode_cpp \
		https://open-vsx.org/api/vscode/json/1.88.1/file/:vscode_json \
		https://open-vsx.org/api/vscode/json-language-features/1.88.1/file/:vscode_jsonlf
DISTFILES+=	avr-1.8.6.tar.bz2:avrcore \
		esp32-3.1.3.zip:espcore \
		marus25.cortex-debug-1.5.1.vsix:cortex_debug \
		vscode.cpp-1.88.1.vsix:vscode_cpp \
		vscode.json-1.88.1.vsix:vscode_json \
		vscode.json-language-features-1.88.1.vsix:vscode_jsonlf \
		vscode-arduino-api-0.1.2.vsix:arduino_api \
		vscode-arduino-tools-0.1.3.vsix:arduino_tools

# plugin id (directory below electron-app/plugins) : distfile
_PLUGINS=	vscode-builtin-cpp:vscode.cpp-1.88.1.vsix \
		vscode-builtin-json:vscode.json-1.88.1.vsix \
		vscode-builtin-json-language-features:vscode.json-language-features-1.88.1.vsix \
		vscode-arduino-api:vscode-arduino-api-0.1.2.vsix \
		vscode-arduino-tools:vscode-arduino-tools-0.1.3.vsix \
		cortex-debug:marus25.cortex-debug-1.5.1.vsix

# language packs, see "theiaPlugins" in electron-app/package.json
_OVSX=		https://open-vsx.org/api
_LP_OLD=	bg hu nl uk
_LP_NEW=	cs de es fr it ja ko pl pt-BR ru tr zh-hans zh-hant
.for l in ${_LP_OLD}
MASTER_SITES+=	${_OVSX}/MS-CEINTL/vscode-language-pack-${l}/1.48.3/file/:lp_${l:S/-/_/}
DISTFILES+=	MS-CEINTL.vscode-language-pack-${l}-1.48.3.vsix:lp_${l:S/-/_/}
_PLUGINS+=	vscode-language-pack-${l}:MS-CEINTL.vscode-language-pack-${l}-1.48.3.vsix
.endfor
.for l in ${_LP_NEW}
MASTER_SITES+=	${_OVSX}/MS-CEINTL/vscode-language-pack-${l}/1.96.0/file/:lp_${l:S/-/_/}
DISTFILES+=	MS-CEINTL.vscode-language-pack-${l}-1.96.0.vsix:lp_${l:S/-/_/}
_PLUGINS+=	vscode-language-pack-${l}:MS-CEINTL.vscode-language-pack-${l}-1.96.0.vsix
.endfor

MAINTAINER=	pcc@gmx.net
COMMENT=	Arduino integrated development environment 2.x
WWW=		https://www.arduino.cc/en/software/

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

ONLY_FOR_ARCHS=	amd64
ONLY_FOR_ARCHS_REASON=	@parcel/watcher-freebsd-x64 is only published for x64

BUILD_DEPENDS=	rg:textproc/ripgrep
LIB_DEPENDS=	libsecret-1.so:security/libsecret
RUN_DEPENDS=	${LLVM_PREFIX}/bin/clangd:${LLVM_PORT} \
		${LOCALBASE}/arduino/tools-builder/ctags/5.8-arduino11/ctags:devel/arduino-ctags \
		${LOCALBASE}/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc:devel/xtensa-esp-elf \
		arduino-avrdude:devel/arduino-avrdude \
		arduino-cli:devel/arduino-cli \
		arduino-dfu-discovery:devel/arduino-dfu-discovery \
		arduino-fwuploader:devel/arduino-fwuploader \
		arduino-language-server:devel/arduino-language-server \
		arduino-mdns-discovery:devel/arduino-mdns-discovery \
		arduino-serial-discovery:devel/arduino-serial-discovery \
		arduino-serial-monitor:devel/arduino-serial-monitor \
		avr-gcc:devel/avr-gcc \
		avr-libc>0:devel/avr-libc \
		dfu-util:comms/dfu-util \
		rg:textproc/ripgrep

USES=		electron:42,build,run gmake llvm:min=14,run,noexport \
		nodejs:build npm:yarn1,build pkgconfig python:build xorg
USE_ELECTRON=	appbuilder
USE_XORG=	x11 xkbfile

USE_GITHUB=	yes
GH_ACCOUNT=	arduino
GH_TUPLE=	arduino:arduino-examples:1.10.3:examples/arduino-examples

# the .vsix files are only unpacked by pre-build, never extracted
EXTRACT_ONLY=	${_DISTFILES:N*.vsix}

SUB_FILES=	arduino-ide \
		pkg-message
SUB_LIST=	LLVM_PREFIX=${LLVM_PREFIX} \
		LOCALBASE=${LOCALBASE}

PLIST_FILES=	bin/arduino-ide \
		share/applications/arduino-ide.desktop \
		share/pixmaps/arduino-ide.png

_NATIVE_MODULES=	drivelist keytar native-keymap node-pty

MAKE_ENV=	ARDUINO_EXAMPLES_DIR=${WRKSRC}/arduino-examples \
		IS_RELEASE=true \
		PATH=${WRKSRC}/node_modules/.bin:${WRKSRC}/arduino-ide-extension/node_modules/.bin:${LOCALBASE}/bin:${PATH}

pre-build:
# @theia/native-webpack-plugin copies this into the bundle
	${MKDIR} ${WRKSRC}/node_modules/@vscode/ripgrep/bin
	${LN} -sf ${LOCALBASE}/bin/rg ${WRKSRC}/node_modules/@vscode/ripgrep/bin/rg
# what "prepare" would do, minus the downloads
	${MKDIR} ${WRKSRC}/arduino-ide-extension/src/node/resources
	cd ${WRKSRC}/arduino-ide-extension && \
		${SETENV} ${MAKE_ENV} yarn copy-i18n && \
		${SETENV} ${MAKE_ENV} node ./scripts/download-examples.js
# what "theia download:plugins" would do
	${MKDIR} ${WRKSRC}/electron-app/plugins
	@for p in ${_PLUGINS}; do \
		id=$${p%%:*}; file=$${p#*:}; \
		${MKDIR} ${WRKSRC}/electron-app/plugins/$${id} && \
		${TAR} -xf ${DISTDIR}/${DIST_SUBDIR}/$${file} \
			-C ${WRKSRC}/electron-app/plugins/$${id} || exit 1; \
	done
# native modules must match the Electron ABI and exist before webpack runs
	@for m in ${_NATIVE_MODULES}; do \
		${ECHO_MSG} "===>  Rebuilding $${m} for electron"; \
		cd ${WRKSRC}/node_modules/$${m} && \
		${SETENV} ${MAKE_ENV} ${ELECTRON_REBUILD_ENV} \
			${NPM_EXEC_CMD} ${NPM_EXEC_FLAGS} node-gyp rebuild || exit 1; \
	done
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} yarn build

do-build:
	cd ${WRKSRC}/electron-app && ${SETENV} ${MAKE_ENV} yarn package

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR}
	cd ${WRKSRC}/electron-app/dist/linux-unpacked && \
		${COPYTREE_SHARE} resources ${STAGEDIR}${DATADIR}
	${RM} ${STAGEDIR}${DATADIR}/resources/app-update.yml
# COPYTREE_SHARE dropped the exec bits set by upstream's webpack config
	@${FIND} ${STAGEDIR}${DATADIR} -name spawn-helper -exec ${CHMOD} 755 {} +
	@if [ -f ${STAGEDIR}${DATADIR}/resources/app/lib/backend/native/rg ]; then \
		${LN} -sf ${PREFIX}/bin/rg \
			${STAGEDIR}${DATADIR}/resources/app/lib/backend/native/rg; \
	fi
	@${FIND} ${STAGEDIR}${DATADIR} -type f -name '*.node' | ${XARGS} ${STRIP_CMD}
	${INSTALL_SCRIPT} ${WRKDIR}/arduino-ide ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/arduino-ide.desktop \
		${STAGEDIR}${PREFIX}/share/applications
	${MKDIR} ${STAGEDIR}${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/electron-app/resources/icons/512x512.png \
		${STAGEDIR}${PREFIX}/share/pixmaps/arduino-ide.png
	${MKDIR} ${STAGEDIR}${PREFIX}/share/arduino-ide/hardware
	${CP} -R ${WRKDIR}/avr-1.8.6 ${STAGEDIR}${PREFIX}/share/arduino-ide/hardware/avr-1.8.6
	${MKDIR} ${STAGEDIR}${PREFIX}/share/arduino-ide/hardware
	${CP} -R ${WRKDIR}/esp32-3.1.3 ${STAGEDIR}${PREFIX}/share/arduino-ide/hardware/esp32-3.1.3

post-install:
	@cd ${STAGEDIR}${PREFIX} && \
		${FIND} share/${PORTNAME} -type f -o -type l | \
		${SORT} >> ${TMPPLIST}
	@cd ${STAGEDIR}${PREFIX} && \
		${FIND} share/${PORTNAME} -type d -empty -exec \
		${ECHO_CMD} '@dir {}' \; >> ${TMPPLIST}

.include <bsd.port.mk>
