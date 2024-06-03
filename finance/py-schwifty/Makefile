# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	schwifty
# NOTE: Must also update version in files/patch-setup.py accordingly!
PORTVERSION=	2024.5.4
CATEGORIES=	finance devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Library to work with IBANs and BICs as specified by the ISO
WWW=		https://github.com/mdomke/schwifty

LICENSE=	MIT

# We eventually could (should?) include ${WRKSRC}/scripts in
# ${FILESDIR}/patch-setup.py, or add a SCRIPTS option to ${COPYTREE_BIN}
# the update scripts from ${WRKSRC}/scripts to somewhere useful but I
# leave this for afters meanwhile to get things done. NOTE that there are
# additional dependencies required for that which are defined in
# ${WRKSRC}/scripts/requirements.txt.
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}importlib-resources>0:devel/py-importlib-resources@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}iso3166>0:textproc/py-iso3166@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pycountry>0:textproc/py-pycountry@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pydantic2>=2.0:devel/py-pydantic2@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
