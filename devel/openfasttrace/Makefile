PORTNAME=	openfasttrace
DISTVERSION=	4.10.0
CATEGORIES=	devel java
MASTER_SITES=	https://github.com/itsallcode/${PORTNAME}/releases/download/${DISTVERSION}/
DISTFILES=	${PORTNAME}-${DISTVERSION}.jar
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	pcc@gmx.net
COMMENT=	Requirement tracing suite
WWW=		https://github.com/itsallcode/openfasttrace

LICENSE=	GPLv3
# Upstream declares GPL-3.0-only

USES=		java
JAVA_VERSION=	17+

NO_ARCH=	yes
NO_BUILD=	yes
NO_EXTRACT=	yes
WRKSRC=		${WRKDIR}

SUB_FILES=	oft
SUB_LIST=	JAVA=${JAVA} \
		JAVAJARDIR=${JAVAJARDIR}

PLIST_FILES=	bin/oft \
		%%JAVAJARDIR%%/openfasttrace.jar

do-install:
	${MKDIR} ${STAGEDIR}${JAVAJARDIR}
	${INSTALL_DATA} ${_DISTDIR}/${DISTFILES} \
		${STAGEDIR}${JAVAJARDIR}/openfasttrace.jar
	${INSTALL_SCRIPT} ${WRKDIR}/oft ${STAGEDIR}${PREFIX}/bin/oft

.include <bsd.port.mk>
