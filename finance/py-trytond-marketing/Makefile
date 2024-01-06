# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-marketing
CATEGORIES=	finance python

COMMENT=	Tryton module to group marketing features
WWW=		https://docs.tryton.org/en/latest/marketing.html

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, res) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
