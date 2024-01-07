# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-promotion-coupon-payment
CATEGORIES=	finance python

COMMENT=	Tryton module to link payment with coupon
WWW=		https://docs.tryton.org/projects/modules-sale-promotion-coupon-payment/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account-payment, ir,
#				sale-promotion-coupon)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-payment=${PORTVERSION}:finance/py-trytond-account-payment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion-coupon=${PORTVERSION}:finance/py-trytond-sale-promotion-coupon@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
