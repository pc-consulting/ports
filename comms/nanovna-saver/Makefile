PORTNAME=	nanovna-saver
DISTVERSIONPREFIX=	v
DISTVERSION=	0.7.3
#PORTREVISION=	2
CATEGORIES=	comms hamradio

MAINTAINER=	hamradio@FreeBSD.org
COMMENT=	Multiplatform tool to save Touchstone files from the NanoVNA
WWW=		https://github.com/NanoVNA-Saver/nanovna-saver

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/licenses/LICENSE.txt

#		FIXME pyside6-tools install is out of order: Currently, you'll e. g.
#		have to ( cd /usr/local/bin && ln -s ./pyside6/uic ./pyside6-uic \
#		&& ln -s ./pyside6/rcc ./pyside6-rcc ) in order to make this port
#		build, despite a passing pyside6-dependency.
#		FIXME Actually, it's setuptools>=64, and scipy>=1.14<2, but...
PY_DEPENDS=	${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}pyserial>=3.5<4:comms/py-pyserial@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyside6-tools>=6.8<7:devel/pyside6@-tools${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}setuptools>=63:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}setuptools-scm>=8:devel/py-setuptools-scm@${PY_FLAVOR}
#		FIXME No idea why this always tries to pull scipy though it's there.'
#		Please manually pkg install -A science/py-scipy meanwhile.
#		${PYTHON_PKGNAMEPREFIX}scipy>=1.11<2:science/py-scipy@${PY_FLAVOR}
BUILD_DEPENDS=	${PY_DEPENDS}
RUN_DEPENDS=	${PY_DEPENDS}

USES=		python pyqt:6
USE_PYTHON=	autoplist noflavors pep517

USE_GITHUB=	yes
GH_ACCOUNT=	NanoVNA-Saver

NO_ARCH=	yes

PEP517_INSTALL_CMD=	${PYTHON_CMD} -m installer --destdir ${STAGEDIR} --prefix ${PREFIX} \
			${BUILD_WRKSRC}/dist/${GH_ACCOUNT:C|[-_]+||g}-${DISTVERSION}*.whl

#WRKSRC_SUBDIR=	src/NanoVNASaver

#post-extract:
#	${CP} ${FILESDIR}/Sysctl.py ${WRKSRC}/Hardware/

.include <bsd.port.mk>
