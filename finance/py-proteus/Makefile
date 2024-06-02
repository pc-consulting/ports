# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	proteus
CATEGORIES=	finance devel python

COMMENT=	Library to access tryton server as a client
WWW=		https://docs.tryton.org/projects/client-library/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}defusedxml>0:devel/py-defusedxml@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR}
# No dependencies from tryton.cfg

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
