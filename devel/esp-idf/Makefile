PORTNAME=	esp-idf
DISTVERSIONPREFIX=	v
DISTVERSION=	5.2.2
CATEGORIES=	devel
# Espressif publishes no plain source tarball for release tags (git
# submodules make GitHub's auto-generated archive useless).  Each release
# instead carries a .zip that bundles .git and all submodules; use that.
MASTER_SITES=	https://github.com/espressif/esp-idf/releases/download/${DISTVERSIONFULL}/ \
		https://dl.espressif.com/github_assets/espressif/esp-idf/releases/download/${DISTVERSIONFULL}/

MAINTAINER=	pcc@gmx.net
COMMENT=	Espressif IoT Development Framework for ESP32 microcontrollers
WWW=		https://github.com/espressif/esp-idf

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

# Needed when a project is built with idf.py, not to install this port.
RUN_DEPENDS=	cmake:devel/cmake-core \
		ninja:devel/ninja \
		gperf:devel/gperf \
		ccache:devel/ccache \
		dfu-util:comms/dfu-util \
		git:devel/git \
		${PYTHON_PKGNAMEPREFIX}pip>=0:devel/py-pip@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}virtualenv>=0:devel/py-virtualenv@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}cryptography>=0:security/py-cryptography@${PY_FLAVOR}

# No py- prefix / FLAVORS: this is a framework that uses Python for its
# tooling, not a module installed into site-packages.
# No USES=cmake: the top-level CMakeLists.txt is a per-project file that
# idf.py drives later and errors out when configured standalone.
USES=		python:3.8+ shebangfix zip

NO_ARCH=	yes
NO_BUILD=	yes
NO_CONFIGURE=	yes

# The tree vendors many third-party test/CI scripts (mbedtls, openthread,
# lwip, cJSON, unity, ...).  Rewrite all of their interpreters so the
# installed tree is stage-qa clean.  Only the .py/.sh files matter at run
# time; the ruby/expect/bash ones are upstream test tooling.
SHEBANG_LANG=	expect
SHEBANG_GLOB=	*.py *.sh *.rb *.exp
# Extension-less scripts
SHEBANG_REGEX=	.*/openthread/(script/[^/]+|tests/fuzz/oss-fuzz-build)

ESPRESSIF_PREFIX=	${LOCALBASE}/espressif
ESPRESSIF_IDF_PATH=	${ESPRESSIF_PREFIX}/esp-idf-${DISTVERSION}

SUB_FILES=	env-script pkg-message
SUB_LIST=	ESPRESSIF_PREFIX=${ESPRESSIF_PREFIX} \
		ESPRESSIF_IDF_PATH=${ESPRESSIF_IDF_PATH}

do-install:
	@${MKDIR} ${STAGEDIR}${ESPRESSIF_IDF_PATH} ${STAGEDIR}${DOCSDIR}
# Copy everything except .git directories/gitlinks at any depth.
	cd ${WRKSRC} && ${FIND} . -name .git -prune -o -print | \
		${CPIO} --quiet -pdum ${STAGEDIR}${ESPRESSIF_IDF_PATH}
	${LN} -sf esp-idf-${DISTVERSION} ${STAGEDIR}${ESPRESSIF_PREFIX}/esp-idf
	${INSTALL_DATA} ${WRKDIR}/env-script \
		${STAGEDIR}${ESPRESSIF_PREFIX}/esp-idf-env.sh
	${INSTALL_DATA} ${WRKSRC}/README.md ${STAGEDIR}${DOCSDIR}/

# The tree has tens of thousands of files that change per release, so the
# bulk of the plist is generated from the staged tree instead of being
# maintained by hand.  pkg-plist only lists the fixed files.
post-install:
	@cd ${STAGEDIR}${PREFIX} && \
		${FIND} espressif/esp-idf-${DISTVERSION} \( -type f -o -type l \) \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@dir espressif/esp-idf-${DISTVERSION}" >> ${TMPPLIST}

.include <bsd.port.mk>
