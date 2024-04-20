# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	tryton
PORTVERSION=	7.0.9
CATEGORIES=	finance python

COMMENT=	Tryton desktop client
WWW=		https://docs.tryton.org/projects/client-desktop/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# 'Install' dependencies follow
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}cairo>0:graphics/py-cairo@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}gobject3>=3.19:devel/py-gobject3@${PY_FLAVOR}
# 'Extras' dependencies follow
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}goocalendar>=0.7:devel/py-goocalendar@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}playsound>0:audio/py-playsound@${PY_FLAVOR}

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
