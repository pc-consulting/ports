# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton server

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}defusedxml>0:devel/py-defusedxml \
		${PYTHON_PKGNAMEPREFIX}Genshi>0:textproc/py-genshi \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil \
		${PYTHON_PKGNAMEPREFIX}polib>0:devel/py-polib \
		${PYTHON_PKGNAMEPREFIX}backports.entry-points-selectable>0:devel/py-backports.entry-points-selectable \
		${PYTHON_PKGNAMEPREFIX}pytz>0:devel/py-pytz \
		${PYTHON_PKGNAMEPREFIX}passlib>0:security/py-passlib \
		${PYTHON_PKGNAMEPREFIX}Levenshtein>0:devel/py-Levenshtein \
		${PYTHON_PKGNAMEPREFIX}python-barcode>0:graphics/py-python-barcode \
		${PYTHON_PKGNAMEPREFIX}argcomplete>0:devel/py-argcomplete \
		${PYTHON_PKGNAMEPREFIX}dnspython>0:dns/py-dnspython \
		${PYTHON_PKGNAMEPREFIX}pydot>0:graphics/py-pydot \
		${PYTHON_PKGNAMEPREFIX}html2text>0:textproc/py-html2text \
		${PYTHON_PKGNAMEPREFIX}pillow>0:graphics/py-pillow \
		${PYTHON_PKGNAMEPREFIX}qrcode>0:textproc/py-qrcode \
		${PYTHON_PKGNAMEPREFIX}webcolors>0:graphics/py-webcolors \
		${PYTHON_PKGNAMEPREFIX}weasyprint>0:print/py-weasyprint

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
