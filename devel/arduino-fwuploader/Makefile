PORTNAME=	arduino-fwuploader
DISTVERSION=	2.4.1
CATEGORIES=	devel

MAINTAINER=	pcc@FreeBSD.org
COMMENT=	Command-line firmware uploader for Arduino boards
WWW=		https://github.com/arduino/arduino-fwuploader

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	arduino
GH_PROJECT=	arduino-fwuploader
GH_TAGNAME=	2.4.1

GH_TUPLE=	\
	arduino:arduino-cli:5725c0273235:arduino_arduino_cli/vendor/github.com/arduino/arduino-cli \
	arduino:go-paths-helper:v1.9.0:arduino_go_paths_helper/vendor/github.com/arduino/go-paths-helper \
	arduino:go-properties-orderedmap:v1.7.1:arduino_go_properties_orderedmap/vendor/github.com/arduino/go-properties-orderedmap \
	arduino:go-timeutils:d1dd9e313b1b:arduino_go_timeutils/vendor/github.com/arduino/go-timeutils \
	arduino:go-win32-utils:v1.0.0:arduino_go_win32_utils/vendor/github.com/arduino/go-win32-utils \
	bugst:go-cleanup:v1.0.0:bugst_go_cleanup/vendor/go.bug.st/cleanup \
	bugst:go-downloader:v2.1.1:bugst_go_downloader/vendor/go.bug.st/downloader/v2 \
	bugst:go-serial:v1.3.2:bugst_go_serial/vendor/go.bug.st/serial \
	bugst:relaxed-semver:v0.10.2:bugst_relaxed_semver/vendor/go.bug.st/relaxed-semver \
	cmaglie:pb:v1.0.27:cmaglie_pb/vendor/github.com/cmaglie/pb \
	codeclysm:extract:v3.1.1:codeclysm_extract_v3/vendor/github.com/codeclysm/extract/v3 \
	cpuguy83:go-md2man:v2.0.1:cpuguy83_go_md2man_v2/vendor/github.com/cpuguy83/go-md2man/v2 \
	creack:goselect:v0.1.2:creack_goselect/vendor/github.com/creack/goselect \
	davecgh:go-spew:v1.1.1:davecgh_go_spew/vendor/github.com/davecgh/go-spew \
	fatih:color:v1.7.0:fatih_color/vendor/github.com/fatih/color \
	fsnotify:fsnotify:v1.4.9:fsnotify_fsnotify/vendor/github.com/fsnotify/fsnotify \
	go-ini:ini:v1.62.0:go_ini_ini/vendor/gopkg.in/ini.v1 \
	go-yaml:yaml:v2.4.0:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
	go-yaml:yaml:v3.0.1:go_yaml_yaml_1/vendor/gopkg.in/yaml.v3 \
	golang:crypto:v0.7.0:golang_crypto/vendor/golang.org/x/crypto \
	golang:exp:10a507213a29:golang_exp/vendor/golang.org/x/exp \
	golang:net:v0.8.0:golang_net/vendor/golang.org/x/net \
	golang:protobuf:v1.5.3:golang_protobuf/vendor/github.com/golang/protobuf \
	golang:sys:v0.6.0:golang_sys/vendor/golang.org/x/sys \
	golang:term:v0.6.0:golang_term/vendor/golang.org/x/term \
	golang:text:v0.8.0:golang_text/vendor/golang.org/x/text \
	google:go-genproto:7f2fa6fef1f4:google_go_genproto/vendor/google.golang.org/genproto \
	grpc:grpc-go:v1.55.0:grpc_grpc_go/vendor/google.golang.org/grpc \
	h2non:filetype:v1.1.3:h2non_filetype/vendor/github.com/h2non/filetype \
	hashicorp:hcl:v1.0.0:hashicorp_hcl/vendor/github.com/hashicorp/hcl \
	inconshreveable:mousetrap:v1.0.0:inconshreveable_mousetrap/vendor/github.com/inconshreveable/mousetrap \
	josharian:intern:v1.0.0:josharian_intern/vendor/github.com/josharian/intern \
	juju:errors:089d3ea4e4d5:juju_errors/vendor/github.com/juju/errors \
	klauspost:compress:v1.15.13:klauspost_compress/vendor/github.com/klauspost/compress \
	leonelquinteros:gotext:v1.4.0:leonelquinteros_gotext/vendor/github.com/leonelquinteros/gotext \
	magiconair:properties:v1.8.5:magiconair_properties/vendor/github.com/magiconair/properties \
	mailru:easyjson:v0.7.7:mailru_easyjson/vendor/github.com/mailru/easyjson \
	mattn:go-colorable:v0.1.8:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
	mattn:go-isatty:v0.0.14:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
	mattn:go-runewidth:v0.0.13:mattn_go_runewidth/vendor/github.com/mattn/go-runewidth \
	mitchellh:mapstructure:v1.4.1:mitchellh_mapstructure/vendor/github.com/mitchellh/mapstructure \
	pelletier:go-toml:v1.9.3:pelletier_go_toml/vendor/github.com/pelletier/go-toml \
	pkg:errors:v0.9.1:pkg_errors/vendor/github.com/pkg/errors \
	pmezard:go-difflib:v1.0.0:pmezard_go_difflib/vendor/github.com/pmezard/go-difflib \
	pmylund:sortutil:abeda66eb583:pmylund_sortutil/vendor/github.com/pmylund/sortutil \
	protocolbuffers:protobuf-go:v1.30.0:protocolbuffers_protobuf_go/vendor/google.golang.org/protobuf \
	rifflock:lfshook:b9218ef580f5:rifflock_lfshook/vendor/github.com/rifflock/lfshook \
	rivo:uniseg:v0.2.0:rivo_uniseg/vendor/github.com/rivo/uniseg \
	russross:blackfriday:v2.0.1:russross_blackfriday_v2/vendor/github.com/russross/blackfriday/v2 \
	shurcooL:sanitized_anchor_name:v1.0.0:shurcool_sanitized_anchor_name/vendor/github.com/shurcooL/sanitized_anchor_name \
	sirupsen:logrus:v1.8.1:sirupsen_logrus/vendor/github.com/sirupsen/logrus \
	spf13:afero:v1.6.0:spf13_afero/vendor/github.com/spf13/afero \
	spf13:cast:v1.3.1:spf13_cast/vendor/github.com/spf13/cast \
	spf13:cobra:v1.2.1:spf13_cobra/vendor/github.com/spf13/cobra \
	spf13:jwalterweatherman:v1.1.0:spf13_jwalterweatherman/vendor/github.com/spf13/jwalterweatherman \
	spf13:pflag:v1.0.5:spf13_pflag/vendor/github.com/spf13/pflag \
	spf13:viper:v1.8.1:spf13_viper/vendor/github.com/spf13/viper \
	stretchr:testify:v1.8.4:stretchr_testify/vendor/github.com/stretchr/testify \
	subosito:gotenv:v1.2.0:subosito_gotenv/vendor/github.com/subosito/gotenv \
	ulikunitz:xz:v0.5.11:ulikunitz_xz/vendor/github.com/ulikunitz/xz

GO_TARGET=	./:arduino-fwuploader
GO_BUILDFLAGS=	-ldflags="-s -X github.com/arduino/arduino-fwuploader/version.versionString=${DISTVERSION}"

PLIST_FILES+=	bin/arduino-fwuploader

.include <bsd.port.mk>
