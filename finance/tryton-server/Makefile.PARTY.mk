#
OPTIONS_GROUP_PARTY=	PARTYFUNDAMENTAL AVATAR RELATIONSHIP SIRET
OPTIONS_DEFAULT+=	PARTYFUNDAMENTAL
PARTY_DESC=		Referential Modules - Identify Parties
PARTYFUNDAMENTAL_DESC=		Fundamentals to store parties.
PARTYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
AVATAR_DESC=		Adds avatar.
AVATAR_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-avatar=${PORTVERSION}:finance/py-trytond-party-avatar@${PY_FLAVOR}
RELATIONSHIP_DESC=		Defines relation between parties.
RELATIONSHIP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-relationship=${PORTVERSION}:finance/py-trytond-party-relationship@${PY_FLAVOR}
SIRET_DESC=		Adds SIRET and SIREN.
SIRET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-siret=${PORTVERSION}:finance/py-trytond-party-siret@${PY_FLAVOR}
