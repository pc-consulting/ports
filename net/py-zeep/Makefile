PORTNAME=	zeep
PORTVERSION=	4.2.1
PORTREVISION=	1
CATEGORIES=	net python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	Modern/fast Python SOAP client based on lxml / requests
WWW=		https://python-zeep.readthedocs.io/

LICENSE=	BSD3CLAUSE MIT
LICENSE_COMB=	multi
LICENSE_FILE=	${WRKSRC}/LICENSE

# Includes "docs" extras requirements
BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sphinx>=1.4.0,1:textproc/py-sphinx@${PY_FLAVOR}
# Includes all extras requirements but "docs" and "test"
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}attrs>=17.2.0:devel/py-attrs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}cached-property>=1.3.0:devel/py-cached-property@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}isodate>=0.5.4:devel/py-isodate@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}lxml>=4.6.0:devel/py-lxml@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}platformdirs>=1.4.0:devel/py-platformdirs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests>=2.7.0:www/py-requests@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests-toolbelt>=0.7.1:www/py-requests-toolbelt@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests-file>=1.5.1:www/py-requests-file@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytz>0:devel/py-pytz@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}httpx>=0.15.0:www/py-httpx@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}xmlsec>=0.6.1:security/py-xmlsec@${PY_FLAVOR}
# For reference only as this _will_ fail, e. g. due to non-existence,
# higher PORTVERSION, etc.
# Includes "test" requirements
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}coverage=5.2.1:devel/py-coverage@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}freezegun=0.3.15:devel/py-freezegun@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pretend=1.0.9:devel//py-pretend@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest-cov=2.1.8:devel/py-pytest-cov@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest-httpx>0:www/py-pytest-httpx@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest-asyncio>0:devel/py-pytest-asyncio@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}pytest=6.2.5:devel/py-pytest@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}requests-mock>=0.7.0:www/py-requests-mock@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}isort=5.3.2:devel/py-isort@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}flake8=3.8.3:devel/py-flake8@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}flake8-blind-except=0.1.1:devel/py-flake8-blind-except@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}flake8-debugger=3.2.1:devel/py-flake8-debugger@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}flake8-imports=0.1.1:devel/py-flake8-imports@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils

NO_ARCH=	yes

.include <bsd.port.mk>
