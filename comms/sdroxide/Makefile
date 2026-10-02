# WIP FreeBSD port for SDR Oxide (sdroxide) 1.6.7
#
# This is an analysis/build prototype, not yet submission-ready.
# See PORT-ANALYSIS.md before attempting a build.
#
# Upstream release:
# https://github.com/dividebysandwich/sdroxide/releases/tag/v1.6.7

PORTNAME=	sdroxide
DISTVERSIONPREFIX=	v
DISTVERSION=	1.6.7
CATEGORIES=	comms hamradio

MAINTAINER=	dl5bct@gmx.net
COMMENT=	Native SDR transceiver client written in Rust
WWW=		https://github.com/dividebysandwich/sdroxide

LICENSE=	GPLv3+ AGPLv3
LICENSE_COMB=	multi
LICENSE_FILE_GPLv3+=	${WRKSRC}/LICENSE
LICENSE_FILE_AGPLv3=	${WRKSRC}/crates/sdroxide-deepcw/LICENSE

# autoconf/automake/libtool: rade_c builds a bundled Opus with autogen.sh
BUILD_DEPENDS=	bindgen:devel/rust-bindgen-cli \
		cmake:devel/cmake \
		autoconf>0:devel/autoconf \
		automake>0:devel/automake \
		libtool>0:devel/libtool

LIB_DEPENDS=	libSoapySDR.so:misc/soapysdr \
		libopus.so:audio/opus \
		libsndio.so:audio/sndio

RUN_DEPENDS=	${LOCALBASE}/lib/libLimeSuite.so.22.09-1:comms/limesuite \
		${LOCALBASE}/lib/libfobos.so:comms/libfobos

USES=		cargo pkgconfig

USE_GITHUB=	yes
GH_ACCOUNT=	dividebysandwich

GH_TUPLE=	knik0:faad2:673a22a3c7c33e96e2ff7aae7c4d2bc190dfbf92:faad2/vendor/faad2 \
		freedv:rade_c:a36161bce0fb37daf3f4602344b095f6817dddb1:rade_c/vendor/rade_c \
		merbanan:rtl_433:8fa6364c5c7e14665fe3d80d0553883ec14a4116:rtl_433/vendor/rtl_433 \
		xiph:opus:940d4e5af64351ca8ba8390df3f555484c567fbb:opus/vendor/opus

# rade_c's BuildOpus.cmake downloads Opus, and Opus' autogen.sh downloads a
# neural-network model tarball.  Neither is allowed at build time, so both are
# distfiles here and get bundled in pre-build.
OPUS_MODEL=	opus_data-4ed9445b96698bad25d852e912b41495ddfa30c8dbc8a55f9cde5826ed793453.tar.gz
MASTER_SITES+=	https://media.xiph.org/opus/models/:opusmodel
DISTFILES+=	${OPUS_MODEL}:opusmodel
EXTRACT_ONLY=	${_DISTFILES:N${OPUS_MODEL}}

OPTIONS_DEFINE=	FDKAAC RTL433 SOAPY
OPTIONS_DEFAULT=FDKAAC RTL433 SOAPY

FDKAAC_DESC=	Install runtime xHE-AAC decoder support
RTL433_DESC=	Build embedded rtl_433 decoders
SOAPY_DESC=	Build SoapySDR device support

FDKAAC_RUN_DEPENDS=	${LOCALBASE}/lib/libfdk-aac.so:audio/fdk-aac

MAKE_ENV+=	RUST_BACKTRACE=1 \
		SDROXIDE_OPUS_URL=${WRKDIR}/opus-bundle.tar.gz

CARGO_BUILD=	yes
CARGO_TEST=	no

PLIST_FILES=	bin/sdroxide

pre-build:
	${CP} ${DISTDIR}/${OPUS_MODEL} ${WRKSRC}/vendor/opus/
	cd ${WRKSRC}/vendor && ${TAR} czf ${WRKDIR}/opus-bundle.tar.gz opus

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/sdroxide

.include <bsd.port.mk>
