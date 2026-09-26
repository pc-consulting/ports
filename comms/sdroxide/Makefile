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

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/LICENSE

#BUILD_DEPENDS=	${LOCALBASE}/bin/autoconf:devel/autoconf \
#		${LOCALBASE}/bin/automake:devel/automake \
#		${LOCALBASE}/bin/libtool:devel/libtool \
#
BUILD_DEPENDS=	bindgen:devel/rust-bindgen-cli \
		cmake:devel/cmake

LIB_DEPENDS=	libSoapySDR.so:misc/soapysdr \
		libopus.so:audio/opus

RUN_DEPENDS=	${LOCALBASE}/lib/libLimeSuite.so.22.09-1:comms/limesuite \
		${LOCALBASE}/lib/libfobos.so:comms/libfobos

USES=		cargo pkgconfig

USE_GITHUB=	yes
GH_ACCOUNT=	dividebysandwich

GH_TUPLE=	knik0:faad2:673a22a3c7c33e96e2ff7aae7c4d2bc190dfbf92:faad2/vendor/faad2 \
		freedv:rade_c:a36161bce0fb37daf3f4602344b095f6817dddb1:rade_c/vendor/rade_c \
		merbanan:rtl_433:8fa6364c5c7e14665fe3d80d0553883ec14a4116:rtl_433/vendor/rtl_433

OPTIONS_DEFINE=	FDKAAC RTL433 SOAPY
OPTIONS_DEFAULT=FDKAAC RTL433 SOAPY

FDKAAC_DESC=	Install runtime xHE-AAC decoder support
RTL433_DESC=	Build embedded rtl_433 decoders
SOAPY_DESC=	Build SoapySDR device support

FDKAAC_RUN_DEPENDS=	${LOCALBASE}/lib/libfdk-aac.so:audio/fdk-aac

MAKE_ENV+=	RUST_BACKTRACE=1

CARGO_BUILD=	yes
CARGO_INSTALL=	no
CARGO_TEST=	no

PLIST_FILES=	bin/sdroxide

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/sdroxide

.include <bsd.port.mk>
