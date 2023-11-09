# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	tryton
PORTVERSION=	7.0.0
CATEGORIES=	finance

MAINTAINER=	pcc@gmx.net
COMMENT=	Meta-port for your module configuration of the Tryton server
WWW=		https://www.tryton.org/

OPTIONS_GROUP=	MAIN BACKEND ACCOUNTING \
		ANALYTIC ATTENDANCE COMMISSION DOCUMENT MARKETING \
		PRODUCTION PROJECT PURCHASE QUALITY SALE SALEPOINT \
		SALESUBSCRIPTION STOCK TIMESHEET \
		BANKING COMPANY CARRIER COUNTRY CURRENCY CUSTOMS \
		DASHBOARD GOOGLEMAPS INCOTERM PARTY PRODUCT \
		ADMINISTRATION
# Main and local functions if desired (could be served elsewhere, for instance)
OPTIONS_GROUP_MAIN=	DTCLIENT SCRCLIENT PSQLCLIENT PSQLSRV WEBSRV
	# TBS_DESKTOP_CLIENT -> tryton-desktop-client
	# TBS_SCRIPT_CLIENT -> tryton-lib
	# PSQL server # could be served from elsewhere via the net
	# web server? wheich one? # could be served elsewhere?
	# Radio: psql client || sqlite # one req'd in any case, sqlite is default if no other is picked, afaik
#py-trytond
#py-tryton
#py-proteus
#postgres-client
#postgres-server
#nginx
OPTIONS_GROUP_BACKEND=	GIS
#py-trytond-gis
#
# There are so many 'operational' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port ensures that it pulls
# in its 'fundamental' module by its port dependencies.
OPTIONS_GROUP_ACCOUNTING=	ACCOUNTINGFUNDAMENTAL ACCOUNTINGASSET \
				BELGIAN BUDGET CASHROUNDING \
				CONSOLIDATION CREDITLIMIT DEPOSIT \
				DUNNING DUNNINGEMAIL DUNNINGFEE \
				DUNNINGLETTER SPANISH SPANISHSII \
				EUROPE FRENCH FRENCHCHORUS GERMAN \
				ACCOUNTINGINVOICE INVOICECORRECTION \
				INVOICEDEFER INVOICEHISTORY \
				INVOICESTANDALONE \
				INVOICESECONDARYUNIT \
				INVOICESTOCK INVOICEWATERMARK \
				MOVELINEGROUPING ACCOUNTINGPAYMENT \
				PAYMENTBRAINTREE PAYMENTCLEARING \
				PAYMENTSEPA PAYMENTSEPACFONB \
				PAYMENTSTRIPE PRODUCT RECEIVABLERULE \
				RULE STATEMENT STATEMENTAEB43 \
				STATEMENTCODA STATEMENTMT940 \
				STATEMENTOFX STATMEMENTRULE \
				STATEMENTSEPA STOCKANGLOSAXON \
				STOCKCONTINENTAL STOCKEUROPEAN \
				STOCKLANDEDCOST STOCKLANDEDCOSTWEIGHT \
				TAXCASH TAXNONDEDUCTIBLE \
				TAXRULECOUNTRY
#py-trytond-account
#py-trytond-account-invoice
#py-trytond-account-invoice-stock
#py-trytond-account-asset
#py-trytond-account-be
#py-trytond-account-budget
#py-trytond-account-cash-rounding
#py-trytond-account-consolidation
#py-trytond-account-credit-limit
#py-trytond-account-de-skr03
#py-trytond-account-deposit
#py-trytond-account-dunning
#py-trytond-account-dunning-email
#py-trytond-account-dunning-fee
#py-trytond-account-dunning-letter
#py-trytond-account-es
#py-trytond-account-es-sii
#py-trytond-account-eu
#py-trytond-account-fr
#py-trytond-account-fr-chorus
#py-trytond-account-invoice-correction
#py-trytond-account-invoice-defer
#py-trytond-account-invoice-history
#py-trytond-account-invoice-line-standalone
#py-trytond-account-invoice-secondary-unit
#py-trytond-account-invoice-watermark
#py-trytond-account-move-line-grouping
#py-trytond-account-payment
#py-trytond-account-payment-braintree
#py-trytond-account-payment-clearing
#py-trytond-account-payment-sepa
#py-trytond-account-payment-sepa-cfonb
#py-trytond-account-payment-stripe
#py-trytond-account-product
#py-trytond-account-receivable-rule
#py-trytond-account-rule
#py-trytond-account-statement
#py-trytond-account-statement-aeb43
#py-trytond-account-statement-coda
#py-trytond-account-statement-mt940
#py-trytond-account-statement-ofx
#py-trytond-account-statement-rule
#py-trytond-account-statement-sepa
#py-trytond-account-stock-anglo-saxon
#py-trytond-account-stock-continental
#py-trytond-account-stock-eu
#py-trytond-account-stock-landed-cost
#py-trytond-account-stock-landed-cost-weight
#py-trytond-account-stock-shipment-cost
#py-trytond-account-stock-shipment-cost-weight
#py-trytond-account-tax-cash
#py-trytond-account-tax-non-deductible
#py-trytond-account-tax-rule-country
OPTIONS_GROUP_ANALYTIC=	ANALYTICFUNDAMENTAL ACCOUNT BUDGET \
			ANALYTICINVOICE PURCHASE
#py-trytond-analytic-account
#py-trytond-analytic-budget
#py-trytond-analytic-invoice
#py-trytond-analytic-purchase
#py-trytond-analytic-sale
OPTIONS_GROUP_ATTENCANCE=	ATTENDANCEFUNDAMENTAL
#py-trytond-attendance
OPTIONS_GROUP_COMMISSION=	COMMISSIONFUNDAMENTAL WAITING
#py-trytond-commission
#py-trytond-commission-waiting
OPTIONS_GROUP_DOCUMENT=	UNCEFACT UNECE # DOCU???
#py-trytond-edocument-uncefact
#py-trytond-edocument-unece
OPTIONS_GROUP_MARKETING=	MARKETINGFUNDAMENTAL AUTOMATION \
				CAMPAIGN EMAIL
#py-trytond-marketing
#py-trytond-marketing-automation
#py-trytond-marketing-campaign
#py-trytond-marketing-email
OPTIONS_GROUP_PRODUCTION=	PRODUCTIONFUNDAMENTAL OUTSOURCING \
				ROUTINGSPLIT WORK WORKTIMESHEET
#py-trytond-production
#py-trytond-production-outsourcing
#py-trytond-production-routing
#py-trytond-production-split
#py-trytond-production-work
#py-trytond-production-work-timesheet
OPTIONS_GROUP_PROJECT=	PROJECTFUNDAMENTAL INVOICE PLAN REVENUE
#py-trytond-project
#py-trytond-project-invoice
#py-trytond-project-plan
#py-trytond-project-revenue
OPTIONS_GROUP_PURCHASE=	PURCHASEFUNDAMENTAL PURCHASEAMENDMENT \
			PURCHASEBLANKETAGREEMENT PURCHASEHISTORY \
			INVOICELINESTANDALONE PURCHASEPRICELIST \
			PRODUCTQUANTITY REQUEST REQUESTQUOTATION \
			REQUISITION PURCHASESECONDARYUNIT \
			PURCHASESHIPMENTCOST
#py-trytond-purchase
#py-trytond-purchase-amendment
#py-trytond-purchase-blanket-agreement
#py-trytond-purchase-history
#py-trytond-purchase-invoice-line-standalone
#py-trytond-purchase-price-list
#py-trytond-purchase-product-quantity
#py-trytond-purchase-request
#py-trytond-purchase-request-quotation
#py-trytond-purchase-requisition
#py-trytond-purchase-secondary-unit
#py-trytond-purchase-shipment-cost
OPTIONS_GROUP_QUALITY=	QUALITYFUNDAMENTAL
#py-trytond-quality
OPTIONS_GROUP_SALE=	SALEFUNDAMENTAL ADVANCEPAYMENT SALESAMENDMENT \
			SALESBLANKETAGREEMENT COMPLAINT CREDITLIMIT \
			DISCOUNT EXTRA GIFTCARD SALESHISTORY \
			INVOICEDATE INVOICEGROUPING OPPORTUNITY \
			SALESPAYMENT SALESPRICELIST PRODUCTCUSTOMER \
			PRODUCTQUALITY PRODUCTRECOMMENDATION \
			PRODUCTRECOMMENDATIONRULE PROMOTION \
			PROMOTIONCOUPON PROMOTIONCOUPONPAYMENT \
			SALESHIPMENTCOST SHIPMENTGROUPING \
			SHIPMENTTOLERANCE SALESECONDARYUNIT \
			STOCKQUANTITY SALESUPPLY SUPPLYDROPSHIPMENT \
			SUPPLYPRODUCTION
#py-trytond-sale
#py-trytond-sale-advance-payment
#py-trytond-sale-amendment
#py-trytond-sale-blanket-agreement
#py-trytond-sale-complaint
#py-trytond-sale-credit-limit
#py-trytond-sale-discount
#py-trytond-sale-extra
#py-trytond-sale-gift-card
#py-trytond-sale-history
#py-trytond-sale-invoice-date
#py-trytond-sale-invoice-grouping
#py-trytond-sale-opportunity
#py-trytond-sale-payment
#py-trytond-sale-price-list
#py-trytond-sale-product-customer
#py-trytond-sale-product-quantity
#py-trytond-sale-product-recommendation
#py-trytond-sale-product-recommendation-association-rule
#py-trytond-sale-promotion
#py-trytond-sale-promotion-coupon
#py-trytond-sale-promotion-coupon-payment
#py-trytond-sale-secondary-unit
#py-trytond-sale-shipment-cost
#py-trytond-sale-shipment-grouping
#py-trytond-sale-shipment-tolerance
#py-trytond-sale-stock-quantity
#py-trytond-sale-supply
#py-trytond-sale-supply-drop-shipment
#py-trytond-sale-supply-production
OPTIONS_GROUP_SALEPOINT=	SALEPOINTFUNDAMENTAL
#py-trytond-sale-point
OPTIONS_GROUP_SALESUBSCRIPTION=	SALESUBSCRIPTIONASSET
#py-trytond-sale-subscription-asset
OPTIONS_GROUP_STOCK=	STOCKFUNDAMENTAL ASSIGNMANUAL CONSIGNMENT \
			FORECAST INVENTORYLOCATION LOCATIONMOVE \
			LOCATIONSEQUENCE LOT \
			LOTSHELFLIFEEXPIRATIONDATE LOTUNIT PACKAGE \
			PACKAGESHIPPING PACKAGESHIPPINGDPD \
			PACKAGESHIPPINGMYGLS PACKAGESHIPPINGSENDCLOUD \
			PACKAGESHIPPINGUPS PRODUCTLOCATION \
			QUANTITYEARLYPLANNING QUANTITYISSUE \
			STOCKSECONDARYUNIT STOCKSHIPMENTCOST \
			SHIPMENTCOSTWEIGHT SHIPMENTMEASUREMENTS \
			SPLIT STOCKSUPPLY SUPPLYFORECAST SUPPLYDAY \
			SUPPLYPRODUCTION
#py-trytond-stock
#py-trytond-stock-assign-manual
#py-trytond-stock-consignment
#py-trytond-stock-forecast
#py-trytond-stock-inventory-location
#py-trytond-stock-location-move
#py-trytond-stock-location-sequence
#py-trytond-stock-lot
#py-trytond-stock-lot-sled
#py-trytond-stock-lot-unit
#py-trytond-stock-package
#py-trytond-stock-package-shipping
#py-trytond-stock-package-shipping-dpd
#py-trytond-stock-package-shipping-mygls
#py-trytond-stock-package-shipping-sendcloud
#py-trytond-stock-package-shipping-ups
#py-trytond-stock-product-location
#py-trytond-stock-quantity-early-planning
#py-trytond-stock-quantity-issue
#py-trytond-stock-secondary-unit
#py-trytond-stock-shipment-cost
#py-trytond-stock-shipment-cost-weight
##y-trytond-stock-shipment-measurements
#py-trytond-stock-split
#py-trytond-stock-supply-day
#py-trytond-stock-supply-forecast
#py-trytond-stock-supply-production
OPTIONS_GROUP_TIMESHEET=	TIMESHEETFUNDAMENTAL COST
#py-trytond-timesheet
#py-trytond-timesheet-cost
#
# There are so many 'referential' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port pulls in the 'fundamental'
# module by its port dependencies.
OPTIONS_GROUP_BANKING=	BANK
#py-trytond-bank
OPTIONS_GROUP_COMPANY=	COMPANYFUNDAMENTAL WORKTIME
#py-trytond-company
#py-trytond-company-work-time
OPTIONS_GROUP_CARRIER=	CARRIERFUNDAMENTAL CARRIAGE PERCENTAGE \
			SUBDIVISION WEIGHT
#py-trytond-carrier
#py-trytond-carrier-carriage
#py-trytond-carrier-percentage
#py-trytond-carrier-subdivision
#py-trytond-carrier-weight
OPTIONS_GROUP_COUNTRY=	COUNTRYFUNDAMENTAL
#py-trytond-country
OPTIONS_GROUP_CURRENCY=	CURRENCYFUNDAMENTAL ROMANIAN SERBIAN
#py-trytond-currency
#py-trytond-currency-ro
#py-trytond-currency-rs
OPTIONS_GROUP_CUSTOMS=	CUSTOMSFUNDAMENTAL
#py-trytond-customs
OPTIONS_GROUP_DASHBOARD=	DASHBOARDFUNDAMENTAL
#py-trytond-dashboard
OPTIONS_GROUP_GOOGLEMAPS=	GOOGLEMAPSFUNDAMENTAL
#py-trytond-google-maps
#OPTIONS_GROUP_INCOTERM=	INCOTERMMOD	# Does this exist as a selectable module?
OPTIONS_GROUP_PARTY=	PARTYFUNDAMENTAL AVATAR RELATIONSHIP SIRET
#py-trytond-party
#py-trytond-party-avatar
#py-trytond-party-relationship
#py-trytond-party-siret
OPTIONS_GROUP_PRODUCT=	PRODUCTFUNDAMENTAL ATTRIBUTE CLASSIFICATION \
			CLASSIFICATIONTAXONOMIC COSTFIFO COSTHISTORY \
			COSTWAREHOUSE MEASUREMENTS PRODUCTPRICELIST \
			PRICELISTCACHE PRICELISTDATES PRICELISTPARENT \
			IMAGE IMAGEATTRIBUTE KIT
#py-trytond-product
#py-trytond-product-attribute
#py-trytond-product-classification
#py-trytond-product-classification-taxonomic
#py-trytond-product-cost-fifo
#py-trytond-product-cost-history
#py-trytond-product-cost-warehouse
#py-trytond-product-image
#py-trytond-product-image-attribute
#py-trytond-product-kit
#py-trytond-product-measurements
#py-trytond-product-price-list
#py-trytond-product-price-list-cache
#py-trytond-product-price-list-dates
#py-trytond-product-price-list-parent
#
OPTIONS_GROUP_ADMINISTRATION=	INBOUNDEMAIL AUTHENTICATIOSAML \
				AUTHENTICATIONSMS AUTHENTICATIONLDAP \
				NOTIFICATIONEMAIL USERROLE SHOP \
				SHOPSHOPIFY SHOPVUESTOREFRONT \
				SHOPVUESTOREFRONTSTRIPE SHORTENER \
				USER
#py-trytond-authentication-saml
#py-trytond-inbound-email
#py-trytond-ldap-authentication
#py-trytond-notification-email
#py-trytond-user-role
#py-trytond-web-shop
#py-trytond-web-shop-shopify
#py-trytond-web-shop-vue-storefront
#py-trytond-web-shortener
#py-trytond-web-user

# DOCU - (e)Doc management (not to be confused with DOCS)
#py-trytond-document-incoming
#py-trytond-document-incoming-invoice
#py-trytond-document-incoming-ocr
#py-trytond-document-incoming-ocr-typless

.include <bsd.port.mk>
