# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	tryton
PORTVERSION=	7.0.0
CATEGORIES=	finance

MAINTAINER=	pcc@gmx.net
COMMENT=	Meta-port for your module configuration of the Tryton server
WWW=		https://www.tryton.org/

OPTIONS_DEFINE=	#
# Local functions if desired (could be served elsewhere, for instance)
# TBS = Tryton Business Software ;-)
	# TBS_DESKTOP_CLIENT -> tryton-desktop-client
	# TBS_SCRIPT_CLIENT -> tryton-lib
	# TBS_Dashboard
	# TBS_GIS => Geo-PSQL?
	# PSQL server # could be served from elsewhere via the net
	# web server? wheich one? # could be served elsewhere?
	# Radio: psql client || sqlite # one req'd in any case, sqlite is default if no other is picked, afaik

# Groups # Pick just 'essentially required' from the groups.
	 # Individual ports' dependencies should pull in anything reqiured if not selected here.
	# OPS - Operational
		# ACCT - Financial Accounting
		# ANA - Analytic Accounting
		# [Attendance, Commission, edocument]
		# MKT - Marketing
		# PRODUCTION
		# PROJECT
		# PURCHASE
		# [Quality]
		# SALE
		# [Sale Point, Sale Subsctiption]
		# STOCK
		# [Timesheet]

	# REF - Referential
		# [Banking, Company]
		# CARR - carrier
		# CURR - Currency
		# [Customs, Dashboard, Google Maps, Incoterm]
		# PARTY - party, gmaps, bank, commssion, company
		# PRODUCT

	# ADM - Admin
		# [(]inbound Email, Resource, Authentication, User Role]
		# WEBSHOP (web, webshop, notification mail?)

	# DOCU - (e)Doc management (not to be confused with DOCS)
	# MISC - , country, customs, quality


RUN_DEPENDS=
#py-trytond

#py-proteus
#py-tryton

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
#py-trytond-analytic-account
#py-trytond-analytic-budget
#py-trytond-analytic-invoice
#py-trytond-analytic-purchase
#py-trytond-analytic-sale
#py-trytond-attendance
#py-trytond-authentication-saml
#py-trytond-bank
#py-trytond-carrier
#py-trytond-carrier-carriage
#py-trytond-carrier-percentage
#py-trytond-carrier-subdivision
#py-trytond-carrier-weight
#py-trytond-commission
#py-trytond-commission-waiting
#py-trytond-company
#py-trytond-company-work-time
#py-trytond-country
#py-trytond-currency
#py-trytond-currency-ro
#py-trytond-currency-rs
#py-trytond-customs
#py-trytond-dashboard
#py-trytond-document-incoming
#py-trytond-document-incoming-invoice
#py-trytond-document-incoming-ocr
#py-trytond-document-incoming-ocr-typless
#py-trytond-edocument-uncefact
#py-trytond-edocument-unece
#py-trytond-gis
#py-trytond-google-maps
#py-trytond-inbound-email
#py-trytond-ldap-authentication
#py-trytond-marketing
#py-trytond-marketing-automation
#py-trytond-marketing-campaign
#py-trytond-marketing-email
#py-trytond-notification-email
#py-trytond-party
#py-trytond-party-avatar
#py-trytond-party-relationship
#py-trytond-party-siret
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
#py-trytond-production
#py-trytond-production-outsourcing
#py-trytond-production-routing
#py-trytond-production-split
#py-trytond-production-work
#py-trytond-production-work-timesheet
#py-trytond-project
#py-trytond-project-invoice
#py-trytond-project-plan
#py-trytond-project-revenue
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
#py-trytond-quality
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
#py-trytond-sale-point
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
#py-trytond-sale-subscription-asset
#py-trytond-sale-supply
#py-trytond-sale-supply-drop-shipment
#py-trytond-sale-supply-production
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
#py-trytond-timesheet
#py-trytond-timesheet-cost
#py-trytond-user-role
#py-trytond-web-shop
#py-trytond-web-shop-shopify
#py-trytond-web-shop-vue-storefront
#py-trytond-web-shortener
#py-trytond-web-user

.include <bsd.port.mk>
