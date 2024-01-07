#
OPTIONS_GROUP_DOCUMENT=	DOCUMENTINCOMING DOCUMENTINCOMINGINVOICE \
			DOCUMENTINCOMINGOCR DOCUMENTINCOMINGOCRTYPLESS \
			UNCEFACT UNECE
OPTIONS_DEFAULT+=	DOCUMENTINCOMING UNCEFACT UNECE
DOCUMENT_DESC=		Operational Modules - (Electronic) Document Format
DOCUMENTINCOMING_DESC=		Incoming documents handling
DOCUMENTINCOMING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-document-incoming@${PY_FLAVOR}
DOCUMENTINCOMINGINVOICE_DESC=		Incoming invoice documents handling
DOCUMENTINCOMINGINVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-invoice>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-document-incoming-invoice@${PY_FLAVOR}
DOCUMENTINCOMINGOCR_DESC=		Incoming documents with OCR handling
DOCUMENTINCOMINGOCR_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-ocr>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-document-incoming-ocr@${PY_FLAVOR}
DOCUMENTINCOMINGOCRTYPLESS_DESC=	Incoming documents interface with Typless
DOCUMENTINCOMINGOCRTYPLESS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-ocr-typless>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-document-incoming-ocr-typless@${PY_FLAVOR}
UNCEFACT_DESC=		Supports UN/CEFACT format.
UNCEFACT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-edocument-uncefact>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-edocument-uncefact@${PY_FLAVOR}
UNECE_DESC=		Adds UNECE codes.
UNECE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-edocument-unece>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-edocument-unece@${PY_FLAVOR}
