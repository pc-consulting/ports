# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-de-skr03
CATEGORIES=	finance python german

COMMENT=	Tryton module with german chart of accounts skr03
WWW=		https://docs.tryton.org/projects/modules-account-de-skr03/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account) # trytond indirectly via py-trytond-account
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
