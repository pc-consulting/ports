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

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}defusedxml>0:XXX/py-defusedxml \
			${PYTHON_PKGNAMEPREFIX}Genshi>0:XXX/py-Genshi \
			${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil \
			${PYTHON_PKGNAMEPREFIX}polib>0:XXX/py-polib \
			${PYTHON_PKGNAMEPREFIX}backports.entry-points-selectable>0:XXX/py-backports.entry-points-selectable \
			${PYTHON_PKGNAMEPREFIX}pytz>0:XXX/py-pytz \
			${PYTHON_PKGNAMEPREFIX}passlib[argon2]>0:XXX/py-passlib[argon2] \
			${PYTHON_PKGNAMEPREFIX}passlib[bcrypt]>0:XXX/py-passlib[bcrypt] \
			${PYTHON_PKGNAMEPREFIX}python-Levenshtein>0:XXX/py-python-Levenshtein \
			${PYTHON_PKGNAMEPREFIX}python-barcode[images]>0:XXX/py-python-barcode[images] \
			${PYTHON_PKGNAMEPREFIX}argcomplete>0:XXX/py-argcomplete \
			${PYTHON_PKGNAMEPREFIX}dnspython>0:XXX/py-dnspython \
			${PYTHON_PKGNAMEPREFIX}pydot>0:XXX/py-pydot \
			${PYTHON_PKGNAMEPREFIX}html2text>0:XXX/py-html2text \
			${PYTHON_PKGNAMEPREFIX}pillow>0:XXX/py-pillow \
			${PYTHON_PKGNAMEPREFIX}qrcode[pil]>0:XXX/py-qrcode[pil] \
			${PYTHON_PKGNAMEPREFIX}webcolors>0:XXX/py-webcolors \
			${PYTHON_PKGNAMEPREFIX}pillow>0:XXX/py-pillow \
			${PYTHON_PKGNAMEPREFIX}weasyprint>0:XXX/py-weasyprint

USES=		python:3.0+ # 3, 3.8, 3.9, 3.10, 3.11, 3.12
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
