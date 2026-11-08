# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	openap
PORTVERSION=	2.6.2
CATEGORIES=	science python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Open Aircraft Performance Model in Python
WWW=		https://openap.dev/ \
		https://github.com/junzis/openap

# The library code is LGPLv3, but the bundled aircraft/engine/navigation
# data in openap/data/ is distributed under the plain GPLv3.
LICENSE=	LGPL3 GPLv3
LICENSE_COMB=	multi
LICENSE_FILE_LGPL3=	${WRKSRC}/LICENSE
LICENSE_FILE_GPLv3=	${WRKSRC}/openap/data/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}hatchling>0:devel/py-hatchling@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>=2.1:math/py-numpy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}scipy>=1.14:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pandas>=2.0:math/py-pandas@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pyyaml>=6.0:devel/py-pyyaml@${PY_FLAVOR}

USES=		python:3.11+
USE_PYTHON=	autoplist pep517
NO_ARCH=	yes

OPTIONS_DEFINE=	PLOT
PLOT_DESC=	Plotting support via matplotlib

PLOT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}matplotlib>=3.8:math/py-matplotlib@${PY_FLAVOR}

.include <bsd.port.mk>
