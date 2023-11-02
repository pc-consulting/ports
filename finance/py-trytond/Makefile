# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton server
WWW=		https://docs.tryton.org/projects/server/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}defusedxml>0:devel/py-defusedxml@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Genshi>0:textproc/py-genshi@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}polib>0:devel/py-polib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}backports.entry-points-selectable>0:devel/py-backports.entry-points-selectable@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytz>0:devel/py-pytz@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}passlib>0:security/py-passlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Levenshtein>0:devel/py-Levenshtein@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}python-barcode>0:graphics/py-python-barcode@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}argcomplete>0:devel/py-argcomplete@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}dnspython>0:dns/py-dnspython@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pydot>0:graphics/py-pydot@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}html2text>0:textproc/py-html2text@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pillow>0:graphics/py-pillow@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}qrcode>0:textproc/py-qrcode@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}webcolors>0:graphics/py-webcolors@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}weasyprint>0:print/py-weasyprint@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
