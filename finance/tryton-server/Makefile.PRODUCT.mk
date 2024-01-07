#
OPTIONS_GROUP_PRODUCT=	PRODUCTFUNDAMENTAL ATTRIBUTE CLASSIFICATION \
			CLASSIFICATIONTAXONOMIC COSTFIFO COSTHISTORY \
			COSTWAREHOUSE MEASUREMENTS PRODUCTPRICELIST \
			PRICELISTCACHE PRICELISTDATES PRICELISTPARENT \
			IMAGE IMAGEATTRIBUTE KIT
OPTIONS_DEFAULT+=	PRODUCTFUNDAMENTAL IMAGE ATTRIBUTE
PRODUCT_DESC=		Referential Modules - Manage Products
PRODUCTFUNDAMENTAL_DESC=	Fundamentals to manage products.
PRODUCTFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR}
ATTRIBUTE_DESC=		Adds attributes to products.
ATTRIBUTE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-attribute=${PORTVERSION}:finance/py-trytond-product-attribute@${PY_FLAVOR}
CLASSIFICATION_DESC=		Classifies products.
CLASSIFICATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-classification=${PORTVERSION}:finance/py-trytond-product-classification@${PY_FLAVOR}
CLASSIFICATIONTAXONOMIC_DESC=		Uses Taxonomic classification.
CLASSIFICATIONTAXONOMIC_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-classification-taxonomic=${PORTVERSION}:finance/py-trytond-product-classification-taxonomic@${PY_FLAVOR}
COSTFIFO_DESC=		Adds FIFO cost method.
COSTFIFO_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-fifo=${PORTVERSION}:finance/py-trytond-product-cost-fifo@${PY_FLAVOR}
COSTHISTORY_DESC=		Historize the cost.
COSTHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-history=${PORTVERSION}:finance/py-trytond-product-cost-history@${PY_FLAVOR}
COSTWAREHOUSE_DESC=		Calculate cost prices per warehouse.
COSTWAREHOUSE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-warehouse=${PORTVERSION}:finance/py-trytond-product-cost-warehouse@${PY_FLAVOR}
MEASUREMENTS_DESC=		Adds measurements to products.
MEASUREMENTS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-measurements=${PORTVERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR}
PRODUCTPRICELIST_DESC=		Computes price.
PRODUCTPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list=${PORTVERSION}:finance/py-trytond-product-price-list@${PY_FLAVOR}
PRICELISTCACHE_DESC=		Pre-compute prices.
PRICELISTCACHE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-cache=${PORTVERSION}:finance/py-trytond-product-price-list-cache@${PY_FLAVOR}
PRICELISTDATES_DESC=		Sets start and end date on price lists.
PRICELISTDATES_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-dates=${PORTVERSION}:finance/py-trytond-product-price-list-dates@${PY_FLAVOR}
PRICELISTPARENT_DESC=		Adds price list cascading.
PRICELISTPARENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-parent=${PORTVERSION}:finance/py-trytond-product-price-list-parent@${PY_FLAVOR}
IMAGE_DESC=		Adds images.
IMAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-image=${PORTVERSION}:finance/py-trytond-product-image@${PY_FLAVOR}
IMAGEATTRIBUTE_DESC=		Adds attributes to product images.
IMAGEATTRIBUTE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-image-attribute=${PORTVERSION}:finance/py-trytond-product-image-attribute@${PY_FLAVOR}
KIT_DESC=		Add support for product kits.
KIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-kit=${PORTVERSION}:finance/py-trytond-product-kit@${PY_FLAVOR}
