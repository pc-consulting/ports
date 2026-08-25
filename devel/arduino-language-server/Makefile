PORTNAME=	arduino-language-server
DISTVERSION=	0.7.7
CATEGORIES=	devel

MAINTAINER=	pcc@gmx.net
COMMENT=	Arduino Language Server
WWW=		https://github.com/arduino/arduino-language-server

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		go:modules

USE_GITHUB=	yes
GH_ACCOUNT=	arduino
GH_TAGNAME=	9945da3

GH_TUPLE=	arduino:arduino-cli:v1.0.3:arduino_arduino_cli/vendor/github.com/arduino/arduino-cli \
		arduino:go-paths-helper:v1.12.1:arduino_go_paths_helper/vendor/github.com/arduino/go-paths-helper \
		arduino:go-properties-orderedmap:v1.8.1:arduino_go_properties_orderedmap/vendor/github.com/arduino/go-properties-orderedmap \
		arduino:pluggable-discovery-protocol-handler:v2.2.0:arduino_pluggable_discovery_protocol_handler_v2/vendor/github.com/arduino/pluggable-discovery-protocol-handler/v2 \
		bugst:go-json:v1.15.6:bugst_go_json/vendor/go.bug.st/json \
		bugst:go-lsp:v0.1.3:bugst_go_lsp/vendor/go.bug.st/lsp \
		bugst:relaxed-semver:v0.12.0:bugst_relaxed_semver/vendor/go.bug.st/relaxed-semver \
		davecgh:go-spew:d8f796af33cc:davecgh_go_spew/vendor/github.com/davecgh/go-spew \
		fatih:color:v1.17.0:fatih_color/vendor/github.com/fatih/color \
		go-check:check:10cb98267c6c:go_check_check/vendor/gopkg.in/check.v1 \
		go-yaml:yaml:v3.0.1:go_yaml_yaml/vendor/gopkg.in/yaml.v3 \
		golang:net:v0.25.0:golang_net/vendor/golang.org/x/net \
		golang:sys:v0.22.0:golang_sys/vendor/golang.org/x/sys \
		golang:text:v0.16.0:golang_text/vendor/golang.org/x/text \
		google:go-genproto:531527333157:google_go_genproto_rpc/vendor/google.golang.org/genproto \
		grpc:grpc-go:v1.65.0:grpc_grpc_go/vendor/google.golang.org/grpc \
		kr:pretty:v0.3.1:kr_pretty/vendor/github.com/kr/pretty \
		mattn:go-colorable:v0.1.13:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
		mattn:go-isatty:v0.0.20:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
		pkg:errors:v0.9.1:pkg_errors/vendor/github.com/pkg/errors \
		pmezard:go-difflib:5d4384ee4fb2:pmezard_go_difflib/vendor/github.com/pmezard/go-difflib \
		protocolbuffers:protobuf-go:v1.34.2:protocolbuffers_protobuf_go/vendor/google.golang.org/protobuf \
		stretchr:testify:v1.9.0:stretchr_testify/vendor/github.com/stretchr/testify

GO_TARGET=	./:arduino-language-server

PLIST_FILES=	bin/arduino-language-server

.include <bsd.port.mk>
