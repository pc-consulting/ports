PORTNAME=	gnuradio
DISTVERSIONPREFIX=	v
DISTVERSION=	3.10.5.1
#PORTREVISION=	6
CATEGORIES=	comms astro hamradio science

MAINTAINER=	hamradio@FreeBSD.org
COMMENT=	(Not Only) Amateur Radio Software Defined Radio
WWW=		https://www.gnuradio.org/

LICENSE=	GPLv3

# XXX FIXME XXX Which of these can we relate to options, which ones are global?
BUILD_DEPENDS=	\
		minixmlto:textproc/minixmlto \
		swig:devel/swig \
		mpir>0:math/mpir \
		xdg-open:devel/xdg-utils
# XXX FIXME XXX Which of these can we relate to options, which ones are global?
LIB_DEPENDS=	\
		liblog4cpp.so:devel/log4cpp \
		liborc-0.4.so:devel/orc \
		libthrift.so:devel/thrift-cpp \
		libunwind.so:devel/libunwind \
		libpangocairo-1.0.so:x11-toolkits/pango
RUN_DEPENDS:=	${BUILD_DEPENDS}

# XXX FIXME XXX Which of these can we relate to options, which ones are global?
USES=		cmake \
		compiler:c++11-lang \
		desktop-file-utils \
		fortran \
		gnome \
		iconv \
		perl5 \
		pkgconfig \
		shared-mime-info \
		shebangfix

SHEBANG_FILES=	grc/scripts/freedesktop/grc_setup_freedesktop.in

# XXX FIXME XXX Which of these can we relate to options, which ones are global?
CMAKE_ARGS+=	-DCMAKE_INSTALL_RPATH:STRING="${LOCALBASE}/lib/gcc${_GCC_VER}" \
		-DICONV_LIB:STRING="X${ICONV_LIB}" \
		-DICONV_PREFIX:STRING="${ICONV_PREFIX}" \
		-DLOCALBASE:STRING="${LOCALBASE}" \
		-DSWIG_EXECUTABLE:STRING="${LOCALBASE}/bin/swig"\
		-DXMLTO_EXECUTABLE:STRING=minixmlto \

USE_CXXSTD=	c++11
USE_GITHUB=	yes
# XXX FIXME XXX WX options remain here until I figure out how to set them at an option.
USE_WX=		3.2
USE_QT=		buildtools core gui xml qmake widgets
WX_COMPS=	wx python:run
USE_LDCONFIG=	yes

#	=== Define Makefile Options === BEGIN ===

OPTIONS_DEFINE=		TESTING PYTHON POSTINSTALL DOXYGEN DEBUG \
			DOCS RUNTIME PCH CRTLPORT COMPANION \
			BLOCKS FEC FFT FILTER ANALOG DIGITAL DTV \
			AUDIO CHANNELS PDU IIO QTGUI TRELLIS UHD \
			RFNOC UTILS MODTOOL BLOCKTOOL SDL \
			VOCODER WAVELET ZMQ NETWORK SOAPY

OPTIONS_DEFAULT=	TESTING PYTHON POSTINSTALL \
			DOCS RUNTIME PCH CRTLPORT COMPANION \
			BLOCKS FEC FFT FILTER ANALOG DIGITAL DTV \
			DOCS RUNTIME PCH CRTLPORT COMPANION \
			AUDIO CHANNELS PDU IIO QTGUI TRELLIS UHD \
			RFNOC UTILS MODTOOL BLOCKTOOL SDL \
			VOCODER WAVELET ZMQ NETWORK SOAPY

#	Group options sensibly
OPTIONS_GROUP=		MANDATORY CAPABILITIES GRBLOCKS OTHER
OPTIONS_GROUP_MANDATORY=	PYTHON RUNTIME
#
#OPTIONS_GROUP=		CAPABILITIES
OPTIONS_GROUP_CAPABILITIES=	COMPANION SDL ZMQ NETWORK SOAPY QTGUI \
			UTILS MODTOOL BLOCKTOOL PCH CRTLPORT
#
#OPTIONS_GROUP=		GRBLOCKS
OPTIONS_GROUP_GRBLOCKS=	BLOCKS FEC FFT FILTER ANALOG DIGITAL DTV \
			AUDIO CHANNELS PDU IIO TRELLIS UHD RFNOC \
			VOCODER WAVELET 
#
#OPTIONS_GROUP=
#OPTIONS_GROUP_=
#
#OPTIONS_GROUP=		OTHER
OPTIONS_GROUP_OTHER=	POSTINSTALL DOXYGEN DOCS DEBUG TESTING

#OPTIONS_EXCLUDE=	RUNTIME	# Effectively mandatory, don't ask user
#OPTIONS_EXCLUDE=	DOXYGEN

OPTIONS_SUB=		yes

#	=== Define Makefile Options === END ===

#	=== Option Definition Details === BEGIN ===
#
#	Note: Conditional definitions towards end of file.

#	Option TESTING
TESTING_DESC=		Testing support
TESTING_CMAKE_BOOL=	ENABLE_TESTING

#	Option PYTHON	# Effectively mandatory for GR to be useful
PYTHON_DESC=		Python support (effectively mandatory)
PYTHON_BUILD_DEPENDS+=	\
			${PYTHON_PKGNAMEPREFIX}sphinx>=1.2.2,1:textproc/py-sphinx@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}lxml>0:devel/py-lxml@${PY_FLAVOR} \
			${PYNUMPY} \
			${PYTHON_PKGNAMEPREFIX}mako>=1.1.0:textproc/py-mako@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/yaml/__init__.py:devel/py-yaml@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/gi/__init__.py:devel/py-gobject3@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/cairo/__init__.py:graphics/py-cairo@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/six.py:devel/py-six@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/click/__init__.py:devel/py-click@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/click_plugins/__init__.py:devel/py-click-plugins@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/jsonschema/__init__.py:devel/py-jsonschema@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/pyqtgraph/__init__.py:graphics/py-pyqtgraph@${PY_FLAVOR} \
			${PYTHON_SITELIBDIR}/scipy/__init__.py:science/py-scipy@${PY_FLAVOR} \
			cheetah:devel/py-cheetah3@${PY_FLAVOR}
PYTHON_CMAKE_BOOL+=	ENABLE_PYTHON
PYTHON_CMAKE_ON+=	-DPYTHON_EXECUTABLE:STRING="${PYTHON_CMD}"
PYTHON_LIB_DEPENDS+=	${PY_BOOST}
PYTHON_RUN_DEPENDS:=	${PYTHON_BUILD_DEPENDS}	# Not checked whether this is strictly true.
PYTHON_USES+=		pyqt:5 python:3.5+ qt:5
### XXX FIXME XXX ### BEGIN
#PYTHON_USES+=		pyqt:5 python:3.5+ qt:5 wx:3.2+
PYTHON_USE+=		pyqt=pyqt5 qt=buildtools,core,gui,xml,qmake,widgets
#PYTHON_USE+=		pyqt=pyqt5 qt=buildtools,core,gui,xml,qmake,widgets wx=wx,python:run
# Not sure whether the above properly translates the following.
#USE_WX=	3.2
#WX_COMPS=	wx python:run
### XXX FIXME XXX ### END

#	Option POSTINSTALL	# No idea what this does but it seems to be on per default
POSTINSTALL_DESC=	Enable post-install support (you likely want this)
POSTINSTALL_CMAKE_BOOL=	ENABLE_POSTINSTALL

#	Option DOXYGEN	# Rumors are, that doxygen should remain off???
DOXYGEN_DESC=		Doxygen code documentator support
DOXYGEN_CMAKE_BOOL+=	ENABLE_DOXYGEN ENABLE_DOCS
DOXYGEN_BUILD_DEPENDS+=	doxygen>0:devel/doxygen \
			${PYTHON_PKGNAMEPREFIX}sphinx>=1.2.2,1:textproc/py-sphinx@${PY_FLAVOR} \
			dot:graphics/graphviz \
			xmlto:textproc/xmlto \
			freefont-ttf>0:x11-fonts/freefont-ttf \
			MathJax>0:www/mathjax
DOXYGEN_RUN_DEPENDS:=	${RUNTIME_BUILD_DEPENDS}	# Not checked whether this is strictly true.

#	Option DEBUG
DEBUG_DESC=		Detailed debugging
DEBUG_CMAKE_ON+=	--debug-output --trace

#	Option DOCS
DOCS_DESC=		Build and install manual pages
DOCS_CMAKE_BOOL=	ENABLE_MANPAGES ENABLE_DOCS
DOCS_CMAKE_ON+=		-DGR_PKG_DOC_DIR:STRING="${DOCSDIR}"

#	Option RUNTIME	# Looks like many (all?) remaining dependencies end up here so might do without eventually.
RUNTIME_DESC=		GnuRadio runtime support (effectively mandatory)
RUNTIME_CMAKE_BOOL=	ENABLE_GNURADIO_RUNTIME
RUNTIME_CMAKE_BOOL_OFF=	ENABLE_INTERNAL_VOLK
RUNTIME_CMAKE_ON+=	-DPYTHON_EXECUTABLE:STRING="${PYTHON_CMD}"
#RUNTIME_IMPLIES=	PYTHON	# Need the binary, but not necessarily the option?
RUNTIME_BUILD_DEPENDS+=	volk>0:devel/volk
RUNTIME_LIB_DEPENDS+=	libgmpxx.so:math/gmp \
			libboost_date_time.so:devel/boost-libs \
			libspdlog.so:devel/spdlog
RUNTIME_RUN_DEPENDS:=	${RUNTIME_BUILD_DEPENDS}	# Not checked whether this is strictly true.
RUNTIME_USES+=		python:3.5+

#	Option PCH
PCH_DESC=		Common pre-compiled headers support (implies RUNTIME)
PCH_CMAKE_BOOL=		ENABLE_COMMON_PCH
PCH_IMPLIES=		RUNTIME

#	Option CRTLPORT
CRTLPORT_DESC=		Control port support (implies RUNTIME)
CRTLPORT_CMAKE_BOOL=	ENABLE_GR_CTRLPORT
CRTLPORT_IMPLIES=	RUNTIME	# ... which, in turn, also includes the boost dependency.

#	Option COMPANION
COMPANION_DESC=		Enable gnuradio-companion (you likely want this, implies PYTHON AUDIO RUNTIME)
COMPANION_CMAKE_BOOL=	ENABLE_GRC
COMPANION_IMPLIES=	RUNTIME PYTHON AUDIO

#	Option BLOCKS
BLOCKS_DESC=		Enable gr-blocks support (you likely want this, implies RUNTIME)
BLOCKS_CMAKE_BOOL=	ENABLE_GR_BLOCKS
BLOCKS_IMPLIES=		RUNTIME	# which also includes the boost dependency.
BLOCKS_LIB_DEPENDS+=	libgsl.so:math/gsl

#	Option FEC
FEC_DESC=		Forward error correction blocks support (implies BLOCKS RUNTIME)
FEC_CMAKE_BOOL=		ENABLE_GR_FEC
FEC_IMPLIES=		RUNTIME BLOCKS	# also caters for boost.

#	Option FFT
FFT_DESC=		FFTW3f fast fourier transformation blocks support (implies BLOCKS RUNTIME)
FFT_CMAKE_BOOL=		ENABLE_GR_FFT
FFT_IMPLIES=		RUNTIME BLOCKS	# incl. boost.
FFT_LIB_DEPENDS+=	libfftw3.so:math/fftw3 \
			libfftw3f.so:math/fftw3-float

#	Option FILTER
FILTER_DESC=		Enable gr-filter support (implies FFT BLOCKS RUNTIME)
FILTER_CMAKE_BOOL=	ENABLE_GR_FILTER
FILTER_IMPLIES=		RUNTIME FFT BLOCKS	# ... boost...

#	Option ANALOG
ANALOG_DESC=		Enable gr-analog support (implies FFT FILTER BLOCKS RUNTIME)
ANALOG_CMAKE_BOOL=	ENABLE_GR_ANALOG
ANALOG_IMPLIES=		RUNTIME FFT FILTER BLOCKS	# boost

#	Option DIGITAL
DIGITAL_DESC=		Enable gr-digital support (implies ANALOG FFT FILTER BLOCKS RUNTIME)
DIGITAL_CMAKE_BOOL=	ENABLE_GR_DIGITAL
DIGITAL_IMPLIES=	RUNTIME BLOCKS FFT FILTER ANALOG	# boost

#	Option DTV
DTV_DESC=		Digital television support (implies ANALOG FFT FILTER RUNTIME)
DTV_CMAKE_BOOL=		ENABLE_GR_DTV
DTV_IMPLIES=		RUNTIME ANALOG FILTER FEC

#	Option AUDIO
AUDIO_DESC=		Audio support (varios audio system dependencies, implies RUNTIME)
AUDIO_CMAKE_BOOL=	ENABLE_GR_AUDIO
AUDIO_IMPLIES=		RUNTIME
#	Note: We should investigate whether we can add knobs to only depend on a select subset of these.
AUDIO_BUILD_DEPENDS+=	aconnect:audio/alsa-utils
#	Note: We should investigate whether we can add knobs to only depend on a select subset of these.
AUDIO_LIB_DEPENDS+=	libcodec2.so:audio/codec2 \
			libportaudio.so:audio/portaudio \
			libjack.so:audio/jack \
			libasound.so:audio/alsa-lib \
			libsndfile.so:audio/libsndfile \
			libpulse.so:audio/pulseaudio	# Currently whishful thinking.

#	Option CHANNELS
CHANNELS_DESC=		Enable gr-channels support (implies ANALOG FFT FILTER BLOCKS RUNTIME)
CHANNELS_CMAKE_BOOL=	ENABLE_GR_CHANNELS
CHANNELS_IMPLIES=	RUNTIME BLOCKS FFT FILTER ANALOG

#	Option PDU
PDU_DESC=		Protocol data unit support (implies FILTER BLOCKS RUNTIME)
PDU_CMAKE_BOOL=		ENABLE_GR_PDU
PDU_IMPLIES=		RUNTIME BLOCKS FILTER

#	Option IIO
IIO_DESC=		Industrial I/O support (libiio & libad9361 dependencies, implies BLOCKS RUNTIME)
IIO_CMAKE_BOOL=		ENABLE_GR_IIO
IIO_IMPLIES=		RUNTIME BLOCKS
IIO_LIB_DEPENDS+=	libiio.so:misc/libiio \
			libad9361.so:misc/libad9361-iio

#	Option QTGUI
QTGUI_DESC=		QT GUI support (QT5/6 dependency, implies FFT FILTER PYTHON RUNTIME)
QTGUI_CMAKE_BOOL=	ENABLE_GR_QTGUI
QTGUI_IMPLIES=		RUNTIME FFT FILTER PYTHON	# Maybe resolve python qt relation more elegantly later
QTGUI_LIB_DEPENDS+=	libqwt6.so:x11-toolkits/qwt6
# XXX FIXME XXX QTGUI_USES+=		qt:5 wx:3.2+
QTGUI_USES+=		qt:5
# XXX FIXME XXX QTGUI_USE+=		qt=buildtools,core,gui,xml,qmake,widgets wx=wx
QTGUI_USE+=		qt=buildtools,core,gui,xml,qmake,widgets

#	Option TRELLIS
TRELLIS_DESC=		Trellis encoding support (implies ANALOG DIGITAL BLOCKS RUNTIME)
TRELLIS_CMAKE_BOOL=	ENABLE_GR_TRELLIS
TRELLIS_IMPLIES=	RUNTIME ANALOG BLOCKS DIGITAL

#	Option UHD
#	Note: Option still has conditionals towards end of file
UHD_DESC=		UHD support from Ettus (libuhd dependency, implies ANALOG FILTER BLOCKS RUNTIME)
UHD_CMAKE_BOOL=		ENABLE_GR_UHD
#UHD_CMAKE_ON=	-DENABLE_GR_UHD:STRING="ON"
#UHD_CMAKE_OFF=	-DENABLE_GR_UHD:STRING="OFF"
UHD_IMPLIES=		RUNTIME FILTER BLOCKS ANALOG
UHD_LIB_DEPENDS+=	libuhd.so:comms/uhd

#	Option RFNOC
RFNOC_DESC=		UHD 4.0 RFNoC support (implies UHD)
RFNOC_CMAKE_BOOL=	ENABLE_UHD_RFNOC
RFNOC_IMPLIES=		UHD	# Not sure how to ensure UHD>4

#	Option UTILS
#UTILS_BROKEN=		Py-Mako in ports still in version <1.1.0
UTILS_DESC=		Enable gr-utils support (implies PYTHON RUNTIME)
UTILS_CMAKE_BOOL=	ENABLE_GR_UTILS
UTILS_IMPLIES=		RUNTIME PYTHON	# PYTHON already depends on (currently outdated) mako.

#	Option MODTOOL
MODTOOL_DESC=		Enable gr_modtool support (implies PYTHON RUNTIME)
MODTOOL_CMAKE_BOOL=	ENABLE_GR_MODTOOL
MODTOOL_IMPLIES=	RUNTIME PYTHON
MODTOOL_BUILD_DEPENDS+=	${PYTHON_SITELIBDIR}/pygccxml/__init__.py:textproc/py-pygccxml@${PY_FLAVOR}
# Wtf is click/click-plugins ??

#	Option BLOCKTOOL
BLOCKTOOL_DESC=		Enable gr-blocktool support (implies PYTHON RUNTIME)
BLOCKTOOL_CMAKE_BOOL=	ENABLE_GR_BLOCKTOOL
BLOCKTOOL_IMPLIES=	RUNTIME PYTHON

#	Option SDL
SDL_DESC=		Simple DirectMedia Layer video support (SDL dependency, implies RUNTIME)
SDL_CMAKE_BOOL=		ENABLE_GR_VIDEO_SDL
SDL_IMPLIES=		RUNTIME
SDL_BUILD_DEPENDS+=	sdl-config:devel/sdl12

#	Option VOCODER
VOCODER_DESC=		Voice encoder support (libcodec2 & libgsm dependencies, implies ANALOG FFT FILTER BLOCKS RUNTIME)
VOCODER_CMAKE_BOOL=	ENABLE_GR_VOCODER
VOCODER_IMPLIES=	RUNTIME FFT BLOCKS FILTER ANALOG
VOCODER_LIB_DEPENDS+=	libcodec2.so:audio/codec2  \
			libgsm.so:audio/gsm

#	Option WAVELET
WAVELET_DESC=		Enable gr-wavelet support (implies ANALOG BLOCKS RUNTIME)
WAVELET_CMAKE_BOOL=	ENABLE_GR_WAVELET
WAVELET_IMPLIES=	RUNTIME BLOCKS ANALOG	# GSL dependency via blocks

#	Option ZMQ
ZMQ_DESC=		Zero message queue support (libzmq/cppzmq dependency, implies RUNTIME)
ZMQ_CMAKE_BOOL=		ENABLE_GR_ZEROMQ
ZMQ_IMPLIES=		RUNTIME
ZMQ_BUILD_DEPENDS+=	cppzmq>0:net/cppzmq
ZMQ_LIB_DEPENDS+=	libzmq.so:net/libzmq4

#	Option NETWORK
NETWORK_DESC=		Enable gr-network support (implies RUNTIME)
NETWORK_CMAKE_BOOL=	ENABLE_GR_NETWORK
NETWORK_IMPLIES=	RUNTIME

#	Option SOAPY
SOAPY_DESC=		SoapySDR support (SopySDR dependency, implies PYTHON RUNTIME)
SOAPY_CMAKE_BOOL=	ENABLE_GR_SOAPY
SOAPY_IMPLIES=		RUNTIME PYTHON
#	Note: Could add knobs to pick an SDR we have in ports, later...
SOAPY_BUILD_DEPENDS+=	${PYTHON_SITELIBDIR}/SoapySDR.py:misc/py-SoapySDR@${PY_FLAVOR}
SOAPY_LIB_DEPENDS+=	libSoapySDR.so:misc/soapysdr
SOAPY_RUN_DEPENDS+=	${SOAPY_BUILD_DEPENDS}

#	=== Option Definition Details === END ===

PLIST_SUB+=	PORTVERSION=${PORTVERSION} PORTMAINVER=${PORTVERSION:C|^([1-9]+)\.([0-9]+)\.([0-9]+).*|\1.\2.\3|}

.include <bsd.port.pre.mk>

#	=== Conditional Option Definition Details === BEGIN ===

### XXX FIXME XXX ### BEGIN
#LIBSTRIP_FILES=	pmt
#SHEBANG_FILES=	grc/scripts/freedesktop/grc_setup_freedesktop.in
#USES+=		shebangfix
# - Mark as broken if off: RUNTIME PYTHON?
### XXX FIXME XXX ### END

# Nothing: TESTING PYTHON POSTINSTALL DOXYGEN DEBUG DOCS
.if ${PORT_OPTIONS:MRUNTIME}
LIBSTRIP_FILES+=	runtime
.endif
# Nothing: PCH
.if ${PORT_OPTIONS:MCRTLPORT}
LIBSTRIP_FILES+=	crtlport
SHEBANG_FILES+=		gnuradio-runtime/python/gnuradio/ctrlport/gr-ctrlport-monitor \
			gnuradio-runtime/python/gnuradio/ctrlport/gr-perf-monitorx
USES+=			shebangfix
.endif
# Nothing: COMPANION
.if ${PORT_OPTIONS:MBLOCKS}
LIBSTRIP_FILES+=	blocks
.endif
.if ${PORT_OPTIONS:MFEC}
LIBSTRIP_FILES+=	fec
.endif
.if ${PORT_OPTIONS:MFFT}
LIBSTRIP_FILES+=	fft
.endif
.if ${PORT_OPTIONS:MFILTER}
LIBSTRIP_FILES+=	filter
.endif
.if ${PORT_OPTIONS:MANALOG}
LIBSTRIP_FILES+=	analog
.endif
.if ${PORT_OPTIONS:MDIGITAL}
LIBSTRIP_FILES+=	digital
.endif
.if ${PORT_OPTIONS:MDTV}
LIBSTRIP_FILES+=	dtv
.endif
.if ${PORT_OPTIONS:MAUDIO}
LIBSTRIP_FILES+=	audio
.endif
.if ${PORT_OPTIONS:MCHANNELS}
LIBSTRIP_FILES+=	channels
.endif
# Nothing: PDU IIO
.if ${PORT_OPTIONS:MQTGUI}
LIBSTRIP_FILES+=	qtgui
.endif
.if ${PORT_OPTIONS:MTRELLIS}
LIBSTRIP_FILES+=	trellis
.endif
.if ${PORT_OPTIONS:MUHD}
LIBSTRIP_FILES+=	uhd
.endif
# Nothing: RFNOC UTILS MODTOOL BLOCKTOOL
.if ${PORT_OPTIONS:MSDL}
LIBSTRIP_FILES+=	video-sdl
.endif
.if ${PORT_OPTIONS:MVOCODER}
LIBSTRIP_FILES+=	vocoder
.endif
.if ${PORT_OPTIONS:MWAVELET}
LIBSTRIP_FILES+=	wavelet
.endif
# Nothing: ZMQ NETWORK SOAPY

#	=== Conditional Option Definition Details === END ===

.include <bsd.port.post.mk>
