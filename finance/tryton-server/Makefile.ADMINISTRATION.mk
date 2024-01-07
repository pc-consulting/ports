#
OPTIONS_GROUP_ADMINISTRATION=	INBOUNDEMAIL AUTHENTICATIOSAML \
				AUTHENTICATIONSMS AUTHENTICATIONLDAP \
				NOTIFICATIONEMAIL USERROLE
OPTIONS_DEFAULT+=	INBOUNDEMAIL AUTHENTICATIONLDAP \
			NOTIFICATIONEMAIL USERROLE SHOP USER
ADMINISTRATION_DESC=	Administration Modules - Various
INBOUNDEMAIL_DESC=		Receive email.
INBOUNDEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-inbound-email>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-inbound-email@${PY_FLAVOR}
AUTHENTICATIOSAML_DESC=		Authentication per SAML.
AUTHENTICATIOSAML_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-authentication-saml>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-authentication-saml@${PY_FLAVOR}
AUTHENTICATIONSMS_DESC=		Authentication per SMS.
AUTHENTICATIONSMS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-authentication-sms>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-authentication-sms@${PY_FLAVOR}
AUTHENTICATIONLDAP_DESC=	Authentication per LDAP.
AUTHENTICATIONLDAP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-ldap-authentication>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-ldap-authentication@${PY_FLAVOR}
NOTIFICATIONEMAIL_DESC=		Sends email.
NOTIFICATIONEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-notification-email>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-notification-email@${PY_FLAVOR}
USERROLE_DESC=		Manage user groups with roles.
USERROLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-user-role>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-user-role@${PY_FLAVOR}
