# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	tryton
PORTVERSION=	7.0.0
CATEGORIES=	finance
MASTER_SITES=	@comment
##DISTFILES=	@comment

MAINTAINER=	pcc@gmx.net
COMMENT=	Meta-port for your module configuration of the Tryton server
WWW=		https://www.tryton.org/

LICENSE=	BSD4CLAUSE	# For this meta-port only; dependencies have GPLv3

# Let's assume that we always want a server.'
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}

OPTIONS_GROUP=	MAIN BACKEND ACCOUNTING \
		ANALYTIC ATTENDANCE COMMISSION DOCUMENT MARKETING \
		PRODUCTION PROJECT PURCHASE QUALITY SALE SALEPOINT \
		SALESUBSCRIPTION STOCK TIMESHEET \
		BANKING COMPANY CARRIER COUNTRY CURRENCY CUSTOMS \
		DASHBOARD GOOGLEMAPS INCOTERM PARTY PRODUCT \
		ADMINISTRATION
# Main and local functions if desired (could be served elsewhere, for instance)
OPTIONS_GROUP_MAIN=	DTCLIENT SCRCLIENT PSQLCLIENT PSQLSRV WEBSRV
OPTIONS_DEFAULT=	SCRCLIENT PSQLCLIENT
MAIN_DESC=		Tryton Frontends and Dependencies
DTCLIENT_DESC=		The application to connect to the server.
DTCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tryton=${PORTVERSION}:finance/py-tryton@${PY_FLAVOR}
SCRCLIENT_DESC=		The library to access models, wizards and reports like a client.
SCRCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}
PSQLCLIENT_DESC=	Install Postgres client (otherwise, depend on local sqlite).
PSQLCLIENT_RUN_DEPENDS=	postgresql16-client>0:databases/postgresql16-client
# Radio-like check required: psql client || sqlite # one req'd in any case, sqlite is default if no other is picked, afaik
PSQLSRV_DESC=		Locally add a postgres database on the Tryton server machine.
PSQLSRV_RUN_DEPENDS=	postgresql16-server>0:databases/postgresql16-server
PSQLSRV_IMPLIES=	PSQLCLIENT
WEBSRV_DESC=		Locally add an nginx web server.
WEBSRV_RUN_DEPENDS=	nginx>0:www/nginx
#
OPTIONS_GROUP_BACKEND=	GIS
# FIXME check whether we need some sort of postgis dependency
OPTIONS_DEFAULT+=	GIS
BACKEND_DESC=		Tryton Backend
GIS_DESC=		Adds GIS support to Tryton.
GIS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}py-trytond-gis=${PORTVERSION}:finance/py-trytond-gis
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
				INVOICELINESTANDALONE \
				INVOICESECONDARYUNIT \
				INVOICESTOCK INVOICEWATERMARK \
				MOVELINEGROUPING ACCOUNTINGPAYMENT \
				PAYMENTBRAINTREE PAYMENTCLEARING \
				PAYMENTSEPA PAYMENTSEPACFONB \
				PAYMENTSTRIPE ACCOUNTINGPRODUCT \
				RECEIVABLERULE RULE STATEMENT \
				STATEMENTAEB43 STATEMENTCODA \
				STATEMENTMT940 STATEMENTOFX \
				STATMEMENTRULE STATEMENTSEPA \
				STOCKANGLOSAXON STOCKCONTINENTAL \
				STOCKEUROPEAN STOCKLANDEDCOST \
				STOCKLANDEDCOSTWEIGHT \
				ACCOUNTSTOCKSHIPMENTCOST \
				ACCOUNTSTOCKSHIPMENTCOSTWEIGHT \
				TAXCASH TAXNONDEDUCTIBLE TAXRULECOUNTRY
OPTIONS_DEFAULT+=	ACCOUNTINGFUNDAMENTAL ACCOUNTINGINVOICE \
			INVOICESTOCK ACCOUNTINGPRODUCT
ACCOUNTING_DESC=	Operational Modules - Reports all Transactions of Your Chart of Accounts
ACCOUNTINGFUNDAMENTAL_DESC=		Fundamentals for most accounting needs.
ACCOUNTINGFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR}
ACCOUNTINGASSET_DESC=		Depreciation of fixed assets.
ACCOUNTINGASSET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-asset=${PORTVERSION}:finance/py-trytond-account-asset@${PY_FLAVOR}
BELGIAN_DESC=		Belgian accounting.
BELGIAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-be=${PORTVERSION}:finance/py-trytond-account-be@${PY_FLAVOR}
BUDGET_DESC=		Budgets for accounts.
BUDGET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-budget=${PORTVERSION}:finance/py-trytond-account-budget@${PY_FLAVOR}
CASHROUNDING_DESC=		Round cash amounts.
CASHROUNDING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-cash-rounding=${PORTVERSION}:finance/py-trytond-account-cash-rounding@${PY_FLAVOR}
CONSOLIDATION_DESC=		Consolidate accounting of multiple companies.
CONSOLIDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-consolidation=${PORTVERSION}:finance/py-trytond-account-consolidation@${PY_FLAVOR}
CREDITLIMIT_DESC=		Manages credit limit of parties.
CREDITLIMIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-credit-limit=${PORTVERSION}:finance/py-trytond-account-credit-limit@${PY_FLAVOR}
DEPOSIT_DESC=		Supports customer deposits.
DEPOSIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-deposit=${PORTVERSION}:finance/py-trytond-account-deposit@${PY_FLAVOR}
DUNNING_DESC=		Manages dunning on receivables.
DUNNING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning=${PORTVERSION}:finance/py-trytond-account-dunning@${PY_FLAVOR}
DUNNINGEMAIL_DESC=		Sends dunning emails.
DUNNINGEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-email=${PORTVERSION}:finance/py-trytond-account-dunning-email@${PY_FLAVOR}
DUNNINGFEE_DESC=	Adds fees to dunnings.
DUNNINGFEE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-fee=${PORTVERSION}:finance/py-trytond-account-dunning-fee@${PY_FLAVOR}
DUNNINGLETTER_DESC=		Prints dunning letters.
DUNNINGLETTER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-letter=${PORTVERSION}:finance/py-trytond-account-dunning-letter@${PY_FLAVOR}
SPANISH_DESC=		Spanish accounting.
SPANISH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-es=${PORTVERSION}:finance/py-trytond-account-es@${PY_FLAVOR}
SPANISHSII_DESC=	Sends invoices to Subministro Inmediato de Informacion (SII).
SPANISHSII_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-es-sii=${PORTVERSION}:finance/py-trytond-account-es-sii@${PY_FLAVOR}
EUROPE_DESC=		Common European requirements.
EUROPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-eu=${PORTVERSION}:finance/py-trytond-account-eu@${PY_FLAVOR}
FRENCH_DESC=		French accounting.
FRENCH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-fr=${PORTVERSION}:finance/py-trytond-account-fr@${PY_FLAVOR}
FRENCHCHORUS_DESC=		Sends invoices via Chorus Pro.
FRENCHCHORUS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-fr-chorus=${PORTVERSION}:finance/py-trytond-account-fr-chorus@${PY_FLAVOR}
GERMAN_DESC=		German "Standardkontenrahmen 03" accounting.
GERMAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-de-skr03=${PORTVERSION}:finance/py-trytond-account-de-skr03@${PY_FLAVOR}
ACCOUNTINGINVOICE_DESC=		Manages customer and supplier invoices.
ACCOUNTINGINVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR}
INVOICECORRECTION_DESC=		Correct price on posted invoices.
INVOICECORRECTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-correction=${PORTVERSION}:finance/py-trytond-account-invoice-correction@${PY_FLAVOR}
INVOICEDEFER_DESC=		Defer expense and revenue.
INVOICEDEFER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-defer=${PORTVERSION}:finance/py-trytond-account-invoice-defer@${PY_FLAVOR}
INVOICEHISTORY_DESC=		Historize invoice.
INVOICEHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-history=${PORTVERSION}:finance/py-trytond-account-invoice-history@${PY_FLAVOR}
INVOICELINESTANDALONE_DESC=		Supports invoice line without invoice.
INVOICELINESTANDALONE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-line-standalone=${PORTVERSION}:finance/py-trytond-account-invoice-line-standalone@${PY_FLAVOR}
INVOICESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
INVOICESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-secondary-unit=${PORTVERSION}:finance/py-trytond-account-invoice-secondary-unit@${PY_FLAVOR}
INVOICESTOCK_DESC=		Links invoice lines and stock moves.
INVOICESTOCK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock=${PORTVERSION}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR}
INVOICEWATERMARK_DESC=		Adds watermark to printed invoices.
INVOICEWATERMARK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-watermark=${PORTVERSION}:finance/py-trytond-account-invoice-watermark@${PY_FLAVOR}
MOVELINEGROUPING_DESC=		Show move line grouped.
MOVELINEGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-move-line-grouping=${PORTVERSION}:finance/py-trytond-account-move-line-grouping@${PY_FLAVOR}
ACCOUNTINGPAYMENT_DESC=		Manages payments.
ACCOUNTINGPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment=${PORTVERSION}:finance/py-trytond-account-payment@${PY_FLAVOR}
PAYMENTBRAINTREE_DESC=		Receives payment from Braintree.
PAYMENTBRAINTREE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-braintree=${PORTVERSION}:finance/py-trytond-account-payment-braintree@${PY_FLAVOR}
PAYMENTCLEARING_DESC=		Uses clearing account for payments.
PAYMENTCLEARING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-clearing=${PORTVERSION}:finance/py-trytond-account-payment-clearing@${PY_FLAVOR}
PAYMENTSEPA_DESC=		Genrates SEPA messages for payments.
PAYMENTSEPA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-sepa=${PORTVERSION}:finance/py-trytond-account-payment-sepa@${PY_FLAVOR}
PAYMENTSEPACFONB_DESC=		Adds CFONB flavors to SEPA.
PAYMENTSEPACFONB_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-sepa-cfonb=${PORTVERSION}:finance/py-trytond-account-payment-sepa-cfonb@${PY_FLAVOR}
PAYMENTSTRIPE_DESC=		Receives payment from Stripe.
PAYMENTSTRIPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-stripe=${PORTVERSION}:finance/py-trytond-account-payment-stripe@${PY_FLAVOR}
ACCOUNTINGPRODUCT_DESC=		Adds accounting on product and category.
ACCOUNTINGPRODUCT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-product=${PORTVERSION}:finance/py-trytond-account-product@${PY_FLAVOR}
ACCOUNTINGPRODUCT_IGNORE=		Module port yet to be completed.
RECEIVABLERULE_DESC=		Applies rules to receivable.
RECEIVABLERULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-receivable-rule=${PORTVERSION}:finance/py-trytond-account-receivable-rule@${PY_FLAVOR}
RULE_DESC=		Applies rules on accounts.
RULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-rule=${PORTVERSION}:finance/py-trytond-account-rule@${PY_FLAVOR}
STATEMENT_DESC=		Books bank statement, cash day book etc.
STATEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR}
STATEMENTAEB43_DESC=		Imports statements in AEB43 format.
STATEMENTAEB43_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-aeb43=${PORTVERSION}:finance/py-trytond-account-statement-aeb43@${PY_FLAVOR}
STATEMENTAEB43_IGNORE=		Module port yet to be completed.
STATEMENTCODA_DESC=		Imports statements in CODA format.
STATEMENTCODA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-coda=${PORTVERSION}:finance/py-trytond-account-statement-coda@${PY_FLAVOR}
STATEMENTCODA_IGNORE=		Module port yet to be completed.
STATEMENTMT940_DESC=		Imports statement in SWIFT Message Type 940 format.
STATEMENTMT940_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-mt940=${PORTVERSION}:finance/py-trytond-account-statement-mt940@${PY_FLAVOR}
STATEMENTMT940_IGNORE=		Module port yet to be completed.
STATEMENTOFX_DESC=		Imports statements in OFX format.
STATEMENTOFX_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-ofx=${PORTVERSION}:finance/py-trytond-account-statement-ofx@${PY_FLAVOR}
STATEMENTOFX_IGNORE=		Module port yet to be completed.
STATMEMENTRULE_DESC=		Applies rules on imported statements.
STATMEMENTRULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-rule=${PORTVERSION}:finance/py-trytond-account-statement-rule@${PY_FLAVOR}
STATEMENTSEPA_DESC=		Imports statements in SEPA format.
STATEMENTSEPA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-sepa=${PORTVERSION}:finance/py-trytond-account-statement-sepa@${PY_FLAVOR}
STATEMENTSEPA_IGNORE=		Module port yet to be completed.
STOCKANGLOSAXON_DESC=		Values stock using the anglo-saxon method.
STOCKANGLOSAXON_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-anglo-saxon=${PORTVERSION}:finance/py-trytond-account-stock-anglo-saxon@${PY_FLAVOR}
STOCKCONTINENTAL_DESC=		Values stock using the continental method.
STOCKCONTINENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental=${PORTVERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR}
STOCKEUROPEAN_DESC=		Common stock European requirements.
STOCKEUROPEAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-eu=${PORTVERSION}:finance/py-trytond-account-stock-eu@${PY_FLAVOR}
STOCKEUROPEAN_IGNORE=		Module port yet to be completed.
STOCKLANDEDCOST_DESC=		Allocates landed cost.
STOCKLANDEDCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost=${PORTVERSION}:finance/py-trytond-account-stock-landed-cost@${PY_FLAVOR}
STOCKLANDEDCOST_IGNORE=		Module port yet to be completed.
STOCKLANDEDCOSTWEIGHT_DESC=		Allocates landed cost based on weight.
STOCKLANDEDCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost-weight=${PORTVERSION}:finance/py-trytond-account-stock-landed-cost-weight@${PY_FLAVOR}
STOCKLANDEDCOSTWEIGHT_IGNORE=		Module port yet to be completed.
ACCOUNTSTOCKSHIPMENTCOST_DESC=		Allocates shipment cost.
ACCOUNTSTOCKSHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-account-stock-shipment-cost@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOST_IGNORE=		Module port yet to be completed.
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_DESC=		Allocates shipment cost by weight.
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost-weight=${PORTVERSION}:finance/py-trytond-account-stock-shipment-cost-weight@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_IGNORE=		Module port yet to be completed.
TAXCASH_DESC=		Reports tax on cash basis.
TAXCASH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-cash=${PORTVERSION}:finance/py-trytond-account-tax-cash@${PY_FLAVOR}
TAXCASH_IGNORE=		Module port yet to be completed.
TAXNONDEDUCTIBLE_DESC=		Reports non-deductible tax.
TAXNONDEDUCTIBLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-non-deductible=${PORTVERSION}:finance/py-trytond-account-tax-non-deductible@${PY_FLAVOR}
TAXNONDEDUCTIBLE_IGNORE=		Module port yet to be completed.
TAXRULECOUNTRY_DESC=		Applies taxes per country of origin and destination.
TAXRULECOUNTRY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-rule-country=${PORTVERSION}:finance/py-trytond-account-tax-rule-country@${PY_FLAVOR}
TAXRULECOUNTRY_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_ANALYTIC=	ANALYTICFUNDAMENTAL BUDGET ANALYTICINVOICE \
			ANALYTICPURCHASE ANALYTICSALE
OPTIONS_DEFAULT+=	ANALYTICFUNDAMENTAL
ANALYTIC_DESC=		Operational Modules - Analyze your Accounts
ANALYTICFUNDAMENTAL_DESC=		Fundamentals for analytic.
ANALYTICFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-account=${PORTVERSION}:finance/py-trytond-analytic-account@${PY_FLAVOR}
BUDGET_DESC=		Budgets for analytic accounts.
BUDGET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-budget=${PORTVERSION}:finance/py-trytond-analytic-budget@${PY_FLAVOR}
BUDGET_IGNORE=		Module port yet to be completed.
ANALYTICINVOICE_DESC=		Adds analytic on invoice.
ANALYTICINVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-invoice=${PORTVERSION}:finance/py-trytond-analytic-invoice@${PY_FLAVOR}
ANALYTICINVOICE_IGNORE=		Module port yet to be completed.
ANALYTICPURCHASE_DESC=		Adds analytic on purchase.
ANALYTICPURCHASE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-purchase=${PORTVERSION}:finance/py-trytond-analytic-purchase@${PY_FLAVOR}
ANALYTICPURCHASE_IGNORE=		Module port yet to be completed.
ANALYTICSALE_DESC=		Adds analytic on sale.
ANALYTICSALE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-sale=${PORTVERSION}:finance/py-trytond-analytic-sale@${PY_FLAVOR}
ANALYTICSALE_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_ATTENCANCE=	ATTENDANCEFUNDAMENTAL
OPTIONS_DEFAULT+=	ATTENDANCEFUNDAMENTAL
ATTENDANCE_DESC=	Operational Modules - Track presences
ATTENDANCEFUNDAMENTAL_DESC=		Track presences.
ATTENDANCEFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-attendance=${PORTVERSION}:finance/py-trytond-attendance@${PY_FLAVOR}
#
OPTIONS_GROUP_COMMISSION=	COMMISSIONFUNDAMENTAL WAITING
OPTIONS_DEFAULT+=	COMMISSIONFUNDAMENTAL
COMMISSION_DESC=	Operational Modules - Commission Sales Agents
COMMISSIONFUNDAMENTAL_DESC=		Fundamentals to commission sales agents.
COMMISSIONFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-commission=${PORTVERSION}:finance/py-trytond-commission@${PY_FLAVOR}
WAITING_DESC=		Creates waiting account moves.
WAITING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-commission-waiting=${PORTVERSION}:finance/py-trytond-commission-waiting@${PY_FLAVOR}
_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_DOCUMENT=	DOCUMENTINCOMING DOCUMENTINCOMINGINVOICE \
			DOCUMENTINCOMINGOCR DOCUMENTINCOMINGOCRTYPLESS \
			UNCEFACT UNECE
OPTIONS_DEFAULT+=	DOCUMENTINCOMING UNCEFACT UNECE
DOCUMENT_DESC=		Operational Modules - (Electronic) Document Format
DOCUMENTINCOMING_DESC=		Incoming documents handling
DOCUMENTINCOMING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming=${PORTVERSION}:finance/py-trytond-document-incoming@${PY_FLAVOR}
DOCUMENTINCOMINGINVOICE_DESC=		Incoming invoice documents handling
DOCUMENTINCOMINGINVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-invoice=${PORTVERSION}:finance/py-trytond-document-incoming-invoice@${PY_FLAVOR}
DOCUMENTINCOMINGINVOICE_IGNORE=		Module port yet to be completed.
DOCUMENTINCOMINGOCR_DESC=		Incoming documents with OCR handling
DOCUMENTINCOMINGOCR_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-ocr=${PORTVERSION}:finance/py-trytond-document-incoming-ocr@${PY_FLAVOR}
DOCUMENTINCOMINGOCR_IGNORE=		Module port yet to be completed.
DOCUMENTINCOMINGOCRTYPLESS_DESC=	Incoming documents interface with Typless
DOCUMENTINCOMINGOCRTYPLESS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-document-incoming-ocr-typless=${PORTVERSION}:finance/py-trytond-document-incoming-ocr-typless@${PY_FLAVOR}
DOCUMENTINCOMINGOCRTYPLESS_IGNORE=		Module port yet to be completed.
UNCEFACT_DESC=		Supports UN/CEFACT format.
UNCEFACT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-edocument-uncefact=${PORTVERSION}:finance/py-trytond-edocument-uncefact@${PY_FLAVOR}
UNECE_DESC=		Adds UNECE codes.
UNECE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-edocument-unece=${PORTVERSION}:finance/py-trytond-edocument-unece@${PY_FLAVOR}
#
OPTIONS_GROUP_MARKETING=	MARKETINGFUNDAMENTAL AUTOMATION \
				CAMPAIGN EMAIL
OPTIONS_DEFAULT+=	MARKETINGFUNDAMENTAL
MARKETING_DESC=		Operational Modules - Communicates with Your Customers
MARKETINGFUNDAMENTAL_DESC=		Fundamentals for marketing.
MARKETINGFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing=${PORTVERSION}:finance/py-trytond-marketing@${PY_FLAVOR}
AUTOMATION_DESC=	Uses scenario.
AUTOMATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-automation=${PORTVERSION}:finance/py-trytond-marketing-automation@${PY_FLAVOR}
AUTOMATION_IGNORE=		Module port yet to be completed.
CAMPAIGN_DESC=		Manage campaign.
CAMPAIGN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-campaign=${PORTVERSION}:finance/py-trytond-marketing-campaign@${PY_FLAVOR}
CAMPAIGN_IGNORE=		Module port yet to be completed.
EMAIL_DESC=		Manage mailing lists.
EMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-marketing-email=${PORTVERSION}:finance/py-trytond-marketing-email@${PY_FLAVOR}
EMAIL_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_PRODUCTION=	PRODUCTIONFUNDAMENTAL OUTSOURCING \
				ROUTING PRODUCTIONSPLIT WORK \
				WORKTIMESHEET
OPTIONS_DEFAULT+=	PRODUCTIONFUNDAMENTAL
PRODUCTION_DESC=	Operational Modules - Transforms Raw Materials into Finished Products
PRODUCTIONFUNDAMENTAL_DESC=		Fundamentals for production management.
PRODUCTIONFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production=${PORTVERSION}:finance/py-trytond-production@${PY_FLAVOR}
OUTSOURCING_DESC=		Outsources the production.
OUTSOURCING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-outsourcing=${PORTVERSION}:finance/py-trytond-production-outsourcing@${PY_FLAVOR}
OUTSOURCING_IGNORE=		Module port yet to be completed.
ROUTING_DESC=		Defines routings.
ROUTING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-routing=${PORTVERSION}:finance/py-trytond-production-routing@${PY_FLAVOR}
ROUTING_IGNORE=		Module port yet to be completed.
PRODUCTIONSPLIT_DESC=	Split production orders.
PRODUCTIONSPLIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-split=${PORTVERSION}:finance/py-trytond-production-split@${PY_FLAVOR}
PRODUCTIONSPLIT_IGNORE=		Module port yet to be completed.
WORK_DESC=		Manage work order for each production.
WORK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-work=${PORTVERSION}:finance/py-trytond-production-work@${PY_FLAVOR}
WORK_IGNORE=		Module port yet to be completed.
WORKTIMESHEET_DESC=		Track time per work.
WORKTIMESHEET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-production-work-timesheet=${PORTVERSION}:finance/py-trytond-production-work-timesheet@${PY_FLAVOR}
WORKTIMESHEET_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_PROJECT=	PROJECTFUNDAMENTAL INVOICE PLAN REVENUE
OPTIONS_DEFAULT+=	PROJECTFUNDAMENTAL
PROJECT_DESC=		Operational Modules - Checks the Profitability of Projects
PROJECTFUNDAMENTAL_DESC=	Fundamentals for project management.
PROJECTFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project=${PORTVERSION}:finance/py-trytond-project@${PY_FLAVOR}
INVOICE_DESC=		Invoices the projects.
INVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-invoice=${PORTVERSION}:finance/py-trytond-project-invoice@${PY_FLAVOR}
INVOICE_IGNORE=		Module port yet to be completed.
PLAN_DESC=		Plans the projects.
PLAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-plan=${PORTVERSION}:finance/py-trytond-project-plan@${PY_FLAVOR}
PLAN_IGNORE=		Module port yet to be completed.
REVENUE_DESC=		Follows cost and revenue of projects.
REVENUE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-project-revenue=${PORTVERSION}:finance/py-trytond-project-revenue@${PY_FLAVOR}
REVENUE_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_PURCHASE=	PURCHASEFUNDAMENTAL PURCHASEAMENDMENT \
			PURCHASEBLANKETAGREEMENT PURCHASEHISTORY \
			INVOICELINESTANDALONE PURCHASEPRICELIST \
			PRODUCTQUANTITY REQUEST REQUESTQUOTATION \
			REQUISITION PURCHASESECONDARYUNIT \
			PURCHASESHIPMENTCOST
OPTIONS_DEFAULT+=	PURCHASEFUNDAMENTAL REQUEST
PURCHASE_DESC=		Operational Modules - Follows Your Purchases
PURCHASEFUNDAMENTAL_DESC=		Fundamentals to follow purchases.
PURCHASEFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR}
PURCHASEAMENDMENT_DESC=		Amend purchases in processing.
PURCHASEAMENDMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-amendment=${PORTVERSION}:finance/py-trytond-purchase-amendment@${PY_FLAVOR}
PURCHASEAMENDMENT_IGNORE=		Module port yet to be completed.
PURCHASEBLANKETAGREEMENT_DESC=		Manage blanket agreements.
PURCHASEBLANKETAGREEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-blanket-agreement=${PORTVERSION}:finance/py-trytond-purchase-blanket-agreement@${PY_FLAVOR}
PURCHASEBLANKETAGREEMENT_IGNORE=		Module port yet to be completed.
PURCHASEHISTORY_DESC=		Manages revisions.
PURCHASEHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-history=${PORTVERSION}:finance/py-trytond-purchase-history@${PY_FLAVOR}
INVOICELINESTANDALONE_DESC=		Generates invoice lines.
INVOICELINESTANDALONE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-invoice-line-standalone=${PORTVERSION}:finance/py-trytond-purchase-invoice-line-standalone@${PY_FLAVOR}
INVOICELINESTANDALONE_IGNORE=		Module port yet to be completed.
PURCHASEPRICELIST_DESC=		Applies price list.
PURCHASEPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-price-list=${PORTVERSION}:finance/py-trytond-purchase-price-list@${PY_FLAVOR}
PURCHASEPRICELIST_IGNORE=		Module port yet to be completed.
PRODUCTQUANTITY_DESC=		Adds constraints on quantity purchased.
PRODUCTQUANTITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-product-quantity=${PORTVERSION}:finance/py-trytond-purchase-product-quantity@${PY_FLAVOR}
PRODUCTQUANTITY_IGNORE=		Module port yet to be completed.
REQUEST_DESC=		Collects the purchase requests.
REQUEST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-request=${PORTVERSION}:finance/py-trytond-purchase-request@${PY_FLAVOR}
REQUESTQUOTATION_DESC=		Asks quotation for the purchase requests.
REQUESTQUOTATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-request-quotation=${PORTVERSION}:finance/py-trytond-purchase-request-quotation@${PY_FLAVOR}
REQUESTQUOTATION_IGNORE=		Module port yet to be completed.
REQUISITION_DESC=		Requires purchase by employees.
REQUISITION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-requisition=${PORTVERSION}:finance/py-trytond-purchase-requisition@${PY_FLAVOR}
REQUISITION_IGNORE=		Module port yet to be completed.
PURCHASESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
PURCHASESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-secondary-unit=${PORTVERSION}:finance/py-trytond-purchase-secondary-unit@${PY_FLAVOR}
PURCHASESECONDARYUNIT_IGNORE=		Module port yet to be completed.
PURCHASESHIPMENTCOST_DESC=		Computes shipment cost.
PURCHASESHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-purchase-shipment-cost=${PORTVERSION}:finance/py-trytond-purchase-shipment-cost@${PY_FLAVOR}
PURCHASESHIPMENTCOST_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_QUALITY=	QUALITYFUNDAMENTAL
OPTIONS_DEFAULT+=	QUALITYFUNDAMENTAL
QUALITY_DESC=		Operational Modules - Manage Quality
QUALITYFUNDAMENTAL_DESC=	Fundamentals to manage quality.
QUALITYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-quality=${PORTVERSION}:finance/py-trytond-quality@${PY_FLAVOR}
#
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
OPTIONS_DEFAULT+=	SALEFUNDAMENTAL SALESUPPLY SUPPLYDROPSHIPMENT
SALE_DESC=		Operational Modules - Follows Sale Orders
SALEFUNDAMENTAL_DESC=		Fundamentals to follow sales.
SALEFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR}
ADVANCEPAYMENT_DESC=		Manage advance payment on sale.
ADVANCEPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-advance-payment=${PORTVERSION}:finance/py-trytond-sale-advance-payment@${PY_FLAVOR}
SALESAMENDMENT_DESC=		Amend sales in processing.
SALESAMENDMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-amendment=${PORTVERSION}:finance/py-trytond-sale-amendment@${PY_FLAVOR}
SALESAMENDMENT_IGNORE=		Module port yet to be completed.
SALESBLANKETAGREEMENT_DESC=		Manage sale blanket agreements.
SALESBLANKETAGREEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-blanket-agreement=${PORTVERSION}:finance/py-trytond-sale-blanket-agreement@${PY_FLAVOR}
SALESBLANKETAGREEMENT_IGNORE=		Module port yet to be completed.
COMPLAINT_DESC=		Solves customer complaints.
COMPLAINT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-complaint=${PORTVERSION}:finance/py-trytond-sale-complaint@${PY_FLAVOR}
COMPLAINT_IGNORE=		Module port yet to be completed.
CREDITLIMIT_DESC=		Adds sales to the credit limit.
CREDITLIMIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-credit-limit=${PORTVERSION}:finance/py-trytond-sale-credit-limit@${PY_FLAVOR}
CREDITLIMIT_IGNORE=		Module port yet to be completed.
DISCOUNT_DESC=		Adds discount on lines.
DISCOUNT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-discount=${PORTVERSION}:finance/py-trytond-sale-discount@${PY_FLAVOR}
DISCOUNT_IGNORE=		Module port yet to be completed.
EXTRA_DESC=		Add extra lines.
EXTRA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-extra=${PORTVERSION}:finance/py-trytond-sale-extra@${PY_FLAVOR}
EXTRA_IGNORE=		Module port yet to be completed.
GIFTCARD_DESC=		Sales gift cards.
GIFTCARD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-gift-card=${PORTVERSION}:finance/py-trytond-sale-gift-card@${PY_FLAVOR}
SALESHISTORY_DESC=		Manages revisions.
SALESHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-history=${PORTVERSION}:finance/py-trytond-sale-history@${PY_FLAVOR}
SALESHISTORY_IGNORE=		Module port yet to be completed.
INVOICEDATE_DESC=		Compute the date of invoice.
INVOICEDATE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-date=${PORTVERSION}:finance/py-trytond-sale-invoice-date@${PY_FLAVOR}
INVOICEDATE_IGNORE=		Module port yet to be completed.
INVOICEGROUPING_DESC=		Groups invoices.
INVOICEGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-invoice-grouping=${PORTVERSION}:finance/py-trytond-sale-invoice-grouping@${PY_FLAVOR}
INVOICEGROUPING_IGNORE=		Module port yet to be completed.
OPPORTUNITY_DESC=		Tracks leads and opportunities.
OPPORTUNITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-opportunity=${PORTVERSION}:finance/py-trytond-sale-opportunity@${PY_FLAVOR}
OPPORTUNITY_IGNORE=		Module port yet to be completed.
SALESPAYMENT_DESC=		Pays sales before posting the invoice.
SALESPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-payment=${PORTVERSION}:finance/py-trytond-sale-payment@${PY_FLAVOR}
SALESPAYMENT_IGNORE=		Module port yet to be completed.
SALESPRICELIST_DESC=		Applies price list.
SALESPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-price-list=${PORTVERSION}:finance/py-trytond-sale-price-list@${PY_FLAVOR}
SALESPRICELIST_IGNORE=		Module port yet to be completed.
PRODUCTCUSTOMER_DESC=		Adds customer’s name and code for product.
PRODUCTCUSTOMER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-customer=${PORTVERSION}:finance/py-trytond-sale-product-customer@${PY_FLAVOR}
PRODUCTCUSTOMER_IGNORE=		Module port yet to be completed.
PRODUCTQUALITY_DESC=		Adds constraints on quantity sold.
PRODUCTQUALITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-quantity=${PORTVERSION}:finance/py-trytond-sale-product-quantity@${PY_FLAVOR}
PRODUCTQUALITY_IGNORE=		Module port yet to be completed.
PRODUCTRECOMMENDATION_DESC=		Recommends products.
PRODUCTRECOMMENDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-recommendation=${PORTVERSION}:finance/py-trytond-sale-product-recommendation@${PY_FLAVOR}
PRODUCTRECOMMENDATION_IGNORE=		Module port yet to be completed.
PRODUCTRECOMMENDATIONRULE_DESC=		Recommends products based on association rules.
PRODUCTRECOMMENDATIONRULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-product-recommendation-association-rule=${PORTVERSION}:finance/py-trytond-sale-product-recommendation-association-rule@${PY_FLAVOR}
PRODUCTRECOMMENDATIONRULE_IGNORE=		Module port yet to be completed.
PROMOTION_DESC=		Applies promotions.
PROMOTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion=${PORTVERSION}:finance/py-trytond-sale-promotion@${PY_FLAVOR}
PROMOTION_IGNORE=		Module port yet to be completed.
PROMOTIONCOUPON_DESC=		Applies promotions with coupons.
PROMOTIONCOUPON_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion-coupon=${PORTVERSION}:finance/py-trytond-sale-promotion-coupon@${PY_FLAVOR}
PROMOTIONCOUPON_IGNORE=		Module port yet to be completed.
PROMOTIONCOUPONPAYMENT_DESC=		Count coupon per identical payment party.
PROMOTIONCOUPONPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-promotion-coupon-payment=${PORTVERSION}:finance/py-trytond-sale-promotion-coupon-payment@${PY_FLAVOR}
PROMOTIONCOUPONPAYMENT_IGNORE=		Module port yet to be completed.
SALESHIPMENTCOST_DESC=		Computes shipment cost.
SALESHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}
SALESHIPMENTCOST_IGNORE=		Module port yet to be completed.
SHIPMENTGROUPING_DESC=		Groups shipments.
SHIPMENTGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-grouping=${PORTVERSION}:finance/py-trytond-sale-shipment-grouping@${PY_FLAVOR}
SHIPMENTGROUPING_IGNORE=		Module port yet to be completed.
SHIPMENTTOLERANCE_DESC=		Define tolerance for under and over shipment.
SHIPMENTTOLERANCE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-tolerance=${PORTVERSION}:finance/py-trytond-sale-shipment-tolerance@${PY_FLAVOR}
SHIPMENTTOLERANCE_IGNORE=		Module port yet to be completed.
SALESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
SALESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-secondary-unit=${PORTVERSION}:finance/py-trytond-sale-secondary-unit@${PY_FLAVOR}
SALESECONDARYUNIT_IGNORE=		Module port yet to be completed.
STOCKQUANTITY_DESC=		Checks stock level.
STOCKQUANTITY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-stock-quantity=${PORTVERSION}:finance/py-trytond-sale-stock-quantity@${PY_FLAVOR}
STOCKQUANTITY_IGNORE=		Module port yet to be completed.
SALESUPPLY_DESC=		Supplies from the sale.
SALESUPPLY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply=${PORTVERSION}:finance/py-trytond-sale-supply@${PY_FLAVOR}
SUPPLYDROPSHIPMENT_DESC=	Supplies with drop shipment.
SUPPLYDROPSHIPMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-drop-shipment=${PORTVERSION}:finance/py-trytond-sale-supply-drop-shipment@${PY_FLAVOR}
SUPPLYPRODUCTION_DESC=		Supplies with production.
SUPPLYPRODUCTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-production=${PORTVERSION}:finance/py-trytond-sale-supply-production@${PY_FLAVOR}
SUPPLYPRODUCTION_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_SALEPOINT=	SALEPOINTFUNDAMENTAL
#OPTIONS_DEFAULT+=	# Not yet
SALEPOINT_DESC=		Operational Modules - Point of Sales
SALEPOINTFUNDAMENTAL_DESC=		Fundamentals for POS.
SALEPOINTFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-point=${PORTVERSION}:finance/py-trytond-sale-point@${PY_FLAVOR}
#
OPTIONS_GROUP_SALESUBSCRIPTION=	SALESUBSCRIPTIONFUNDAMENTAL \
				SALESUBSCRIPTIONASSET
#OPTIONS_DEFAULT+=	# Not yet
SALESUBSCRIPTION_DESC=	Operational Modules - Subscribes to Recurring Service
SALESUBSCRIPTIONFUNDAMENTAL_DESC=		Fundamentals to manage subscriptions.
SALESUBSCRIPTIONFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-subscription=${PORTVERSION}:finance/py-trytond-sale-subscription@${PY_FLAVOR}
SALESUBSCRIPTIONFUNDAMENTAL_IGNORE=		Module port yet to be completed.
SALESUBSCRIPTIONASSET_DESC=		Add asset to subscribed service.
SALESUBSCRIPTIONASSET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-sale-subscription-asset=${PORTVERSION}:finance/py-trytond-sale-subscription-asset@${PY_FLAVOR}
SALESUBSCRIPTIONASSET_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_STOCK=	STOCKFUNDAMENTAL ASSIGNMANUAL CONSIGNMENT \
			FORECAST INVENTORYLOCATION LOCATIONMOVE \
			LOCATIONSEQUENCE LOT \
			LOTSHELFLIFEEXPIRATIONDATE LOTUNIT PACKAGE \
			PACKAGESHIPPING PACKAGESHIPPINGDPD \
			PACKAGESHIPPINGMYGLS PACKAGESHIPPINGSENDCLOUD \
			PACKAGESHIPPINGUPS PRODUCTLOCATION \
			QUANTITYEARLYPLANNING QUANTITYISSUE \
			STOCKSECONDARYUNIT STOCKSHIPMENTCOST \
			STOCKSHIPMENTCOSTWEIGHT SHIPMENTMEASUREMENTS \
			STOCKSPLIT STOCKSUPPLY SUPPLYFORECAST \
			SUPPLYDAY SUPPLYPRODUCTION
OPTIONS_DEFAULT+=	STOCKFUNDAMENTAL LOT
STOCK_DESC=		Operational Modules - Tracks Goods in Your Warehouses
STOCKFUNDAMENTAL_DESC=		Fundamentals to manage warehouses.
STOCKFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR}
ASSIGNMANUAL_DESC=		Manually decide where to pick products.
ASSIGNMANUAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-assign-manual=${PORTVERSION}:finance/py-trytond-stock-assign-manual@${PY_FLAVOR}
ASSIGNMANUAL_IGNORE=		Module port yet to be completed.
CONSIGNMENT_DESC=		Manages consignment stock from supplier or at customer warehouse.
CONSIGNMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-consignment=${PORTVERSION}:finance/py-trytond-stock-consignment@${PY_FLAVOR}
CONSIGNMENT_IGNORE=		Module port yet to be completed.
FORECAST_DESC=		Forecast the stock levels.
FORECAST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-forecast=${PORTVERSION}:finance/py-trytond-stock-forecast@${PY_FLAVOR}
FORECAST_IGNORE=		Module port yet to be completed.
INVENTORYLOCATION_DESC=		Creates inventories for many locations.
INVENTORYLOCATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-inventory-location=${PORTVERSION}:finance/py-trytond-stock-inventory-location@${PY_FLAVOR}
INVENTORYLOCATION_IGNORE=		Module port yet to be completed.
LOCATIONMOVE_DESC=		Makes location movable.
LOCATIONMOVE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-location-move=${PORTVERSION}:finance/py-trytond-stock-location-move@${PY_FLAVOR}
LOCATIONMOVE_IGNORE=		Module port yet to be completed.
LOCATIONSEQUENCE_DESC=		Orders locations.
LOCATIONSEQUENCE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-location-sequence=${PORTVERSION}:finance/py-trytond-stock-location-sequence@${PY_FLAVOR}
LOCATIONSEQUENCE_IGNORE=		Module port yet to be completed.
LOT_DESC=		Track products with lot.
LOT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot=${PORTVERSION}:finance/py-trytond-stock-lot@${PY_FLAVOR}
LOTSHELFLIFEEXPIRATIONDATE_DESC=	Manages expiration dates.
LOTSHELFLIFEEXPIRATIONDATE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot-sled=${PORTVERSION}:finance/py-trytond-stock-lot-sled@${PY_FLAVOR}
LOTSHELFLIFEEXPIRATIONDATE_IGNORE=		Module port yet to be completed.
LOTUNIT_DESC=		Defines unit and quantity per lot.
LOTUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-lot-unit=${PORTVERSION}:finance/py-trytond-stock-lot-unit@${PY_FLAVOR}
LOTUNIT_IGNORE=		Module port yet to be completed.
PACKAGE_DESC=		Store packaging on shipments.
PACKAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package=${PORTVERSION}:finance/py-trytond-stock-package@${PY_FLAVOR}
PACKAGE_IGNORE=		Module port yet to be completed.
PACKAGESHIPPING_DESC=	Fundamentals to interact with shipping services.
PACKAGESHIPPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping=${PORTVERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR}
PACKAGESHIPPING_IGNORE=		Module port yet to be completed.
PACKAGESHIPPINGDPD_DESC=	Connects with DPD shipping service.
PACKAGESHIPPINGDPD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-dpd=${PORTVERSION}:finance/py-trytond-stock-package-shipping-dpd@${PY_FLAVOR}
PACKAGESHIPPINGDPD_IGNORE=		Module port yet to be completed.
PACKAGESHIPPINGMYGLS_DESC=		Connects with MyGLS shipping service.
PACKAGESHIPPINGMYGLS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-mygls=${PORTVERSION}:finance/py-trytond-stock-package-shipping-mygls@${PY_FLAVOR}
PACKAGESHIPPINGMYGLS_IGNORE=		Module port yet to be completed.
PACKAGESHIPPINGSENDCLOUD_DESC=		Connects to the Sendcloud shipping service.
PACKAGESHIPPINGSENDCLOUD_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-sendcloud=${PORTVERSION}:finance/py-trytond-stock-package-shipping-sendcloud@${PY_FLAVOR}
PACKAGESHIPPINGSENDCLOUD_IGNORE=		Module port yet to be completed.
PACKAGESHIPPINGUPS_DESC=	Connects with UPS shipping service.
PACKAGESHIPPINGUPS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping-ups=${PORTVERSION}:finance/py-trytond-stock-package-shipping-ups@${PY_FLAVOR}
PACKAGESHIPPINGUPS_IGNORE=		Module port yet to be completed.
PRODUCTLOCATION_DESC=		Defines preferred locations for products.
PRODUCTLOCATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-product-location=${PORTVERSION}:finance/py-trytond-stock-product-location@${PY_FLAVOR}
PRODUCTLOCATION_IGNORE=		Module port yet to be completed.
QUANTITYEARLYPLANNING_DESC=		Consume earlier stock.
QUANTITYEARLYPLANNING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-quantity-early-planning=${PORTVERSION}:finance/py-trytond-stock-quantity-early-planning@${PY_FLAVOR}
QUANTITYEARLYPLANNING_IGNORE=		Module port yet to be completed.
QUANTITYISSUE_DESC=		Reports quantity issues.
QUANTITYISSUE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-quantity-issue=${PORTVERSION}:finance/py-trytond-stock-quantity-issue@${PY_FLAVOR}
QUANTITYISSUE_IGNORE=		Module port yet to be completed.
STOCKSECONDARYUNIT_DESC=	Reports quantity issues.
STOCKSECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-secondary-unit=${PORTVERSION}:finance/py-trytond-stock-secondary-unit@${PY_FLAVOR}
STOCKSECONDARYUNIT_IGNORE=		Module port yet to be completed.
STOCKSHIPMENTCOST_DESC=		Adds shipment costs to outgoing moves.
STOCKSHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-stock-shipment-cost@${PY_FLAVOR}
STOCKSHIPMENTCOST_IGNORE=		Module port yet to be completed.
STOCKSHIPMENTCOSTWEIGHT_DESC=		Set shipment costs based on weight.
STOCKSHIPMENTCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost-weight=${PORTVERSION}:finance/py-trytond-stock-shipment-cost-weight@${PY_FLAVOR}
STOCKSHIPMENTCOSTWEIGHT_IGNORE=		Module port yet to be completed.
SHIPMENTMEASUREMENTS_DESC=		Adds measurements to shipments.
SHIPMENTMEASUREMENTS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-measurements=${PORTVERSION}:finance/py-trytond-stock-shipment-measurements@${PY_FLAVOR}
SHIPMENTMEASUREMENTS_IGNORE=		Module port yet to be completed.
STOCKSPLIT_DESC=	Splits moves and shipments.
STOCKSPLIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-split=${PORTVERSION}:finance/py-trytond-stock-split@${PY_FLAVOR}
STOCKSPLIT_IGNORE=		Module port yet to be completed.
STOCKSUPPLY_DESC=		Supplies warehouses.
STOCKSUPPLY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}=${PORTVERSION}:finance/py-@${PY_FLAVOR}
STOCKSUPPLY_IGNORE=		Module port yet to be completed.
SUPPLYFORECAST_DESC=		Uses forecast to supply warehouses.
SUPPLYFORECAST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-forecast=${PORTVERSION}:finance/py-trytond-stock-supply-forecast@${PY_FLAVOR}
SUPPLYFORECAST_IGNORE=		Module port yet to be completed.
SUPPLYDAY_DESC=		Compute supply date per week day.
SUPPLYDAY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-day=${PORTVERSION}:finance/py-trytond-stock-supply-day@${PY_FLAVOR}
SUPPLYDAY_IGNORE=		Module port yet to be completed.
SUPPLYPRODUCTION_DESC=		Supplies warehouses with production orders.
SUPPLYPRODUCTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-stock-supply-production=${PORTVERSION}:finance/py-trytond-stock-supply-production@${PY_FLAVOR}
SUPPLYPRODUCTION_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_TIMESHEET=	TIMESHEETFUNDAMENTAL COST
OPTIONS_DEFAULT+=	TIMESHEETFUNDAMENTAL
TIMESHEET_DESC=		Operational Modules - Tracks Time Spend
TIMESHEETFUNDAMENTAL_DESC=		Fundamentals to track time spend.
TIMESHEETFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-timesheet=${PORTVERSION}:finance/py-trytond-timesheet@${PY_FLAVOR}
COST_DESC=		Tracks employee cost.
COST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-timesheet-cost=${PORTVERSION}:finance/py-trytond-timesheet-cost@${PY_FLAVOR}
COST_IGNORE=		Module port yet to be completed.
#
# There are so many 'referential' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port pulls in the 'fundamental'
# module by its port dependencies.
#
OPTIONS_GROUP_BANKING=	BANK
OPTIONS_DEFAULT+=	BANK
BANKING_DESC=		Referential Modules - Adds Bank and Account
BANK_DESC=		Adds bank and account.
BANK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-bank=${PORTVERSION}:finance/py-trytond-bank@${PY_FLAVOR}
#
OPTIONS_GROUP_COMPANY=	COMPANYFUNDAMENTAL WORKTIME
OPTIONS_DEFAULT+=	COMPANYFUNDAMENTAL WORKTIME
COMPANY_DESC=		Referential Modules - Structure of the Company
COMPANYFUNDAMENTAL_DESC=	Defines company and employees.
COMPANYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR}
WORKTIME_DESC=		Defines work time per company.
WORKTIME_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-company-work-time=${PORTVERSION}:finance/py-trytond-company-work-time@${PY_FLAVOR}
#
OPTIONS_GROUP_CARRIER=	CARRIERFUNDAMENTAL CARRIAGE PERCENTAGE \
			SUBDIVISION WEIGHT
OPTIONS_DEFAULT+=	CARRIERFUNDAMENTAL
CARRIER_DESC=		Referential Modules - To Ship
CARRIERFUNDAMENTAL_DESC=	Fundamentals to manage carriers.
CARRIERFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR}
CARRIAGE_DESC=		Supports multiple carriers per document.
CARRIAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-carriage=${PORTVERSION}:finance/py-trytond-carrier-carriage@${PY_FLAVOR}
CARRIAGE_IGNORE=		Module port yet to be completed.
PERCENTAGE_DESC=	Computes cost based on percentage.
PERCENTAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-percentage=${PORTVERSION}:finance/py-trytond-carrier-percentage@${PY_FLAVOR}
PERCENTAGE_IGNORE=		Module port yet to be completed.
SUBDIVISION_DESC=		Restricts the usage of a carrier to subdivisions and ZIP codes.
SUBDIVISION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-subdivision=${PORTVERSION}:finance/py-trytond-carrier-subdivision@${PY_FLAVOR}
SUBDIVISION_IGNORE=		Module port yet to be completed.
WEIGHT_DESC=		Computes cost based on weight.
WEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-carrier-weight=${PORTVERSION}:finance/py-trytond-carrier-weight@${PY_FLAVOR}
WEIGHT_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_COUNTRY=	COUNTRYFUNDAMENTAL
OPTIONS_DEFAULT+=	COUNTRYFUNDAMENTAL
COUNTRY_DESC=		Referential Modules - ISO 3166 List of Countries and Subdivisions
COUNTRYFUNDAMENTAL_DESC=	ISO 3166 list of countries and subdivisions.
COUNTRYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-country=${PORTVERSION}:finance/py-trytond-country@${PY_FLAVOR}
#
OPTIONS_GROUP_CURRENCY=	CURRENCYFUNDAMENTAL ROMANIAN SERBIAN
OPTIONS_DEFAULT+=	CURRENCYFUNDAMENTAL
CURRENCY_DESC=		Referential Modules - Manage Currencies
CURRENCYFUNDAMENTAL_DESC=		ISO 4217 list of currencies.
CURRENCYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR}
ROMANIAN_DESC=		Exchange rates from the Romanian National Bank.
ROMANIAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-currency-ro=${PORTVERSION}:finance/py-trytond-currency-ro@${PY_FLAVOR}
ROMANIAN_IGNORE=		Module port yet to be completed.
SERBIAN_DESC=		Exchange rates from the Serbian National Bank.
SERBIAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-currency-rs=${PORTVERSION}:finance/py-trytond-currency-rs@${PY_FLAVOR}
SERBIAN_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_CUSTOMS=	CUSTOMSFUNDAMENTAL
OPTIONS_DEFAULT+=	CUSTOMSFUNDAMENTAL
CUSTOMS_DESC=		Referential Modules - Defines Customs Duty per Tariff Code
CUSTOMSFUNDAMENTAL_DESC=	Defines customs duty per tariff code.
CUSTOMSFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-customs=${PORTVERSION}:finance/py-trytond-customs@${PY_FLAVOR}
#
OPTIONS_GROUP_DASHBOARD=	DASHBOARDFUNDAMENTAL
OPTIONS_DEFAULT+=	DASHBOARDFUNDAMENTAL
DASHBOARD_DESC=		Referential Modules - Customized Dashboard
DASHBOARDFUNDAMENTAL_DESC=	Customized dashboard.
DASHBOARDFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-dashboard=${PORTVERSION}:finance/py-trytond-dashboard@${PY_FLAVOR}
#
OPTIONS_GROUP_GOOGLEMAPS=	GOOGLEMAPSFUNDAMENTAL
OPTIONS_DEFAULT+=	GOOGLEMAPSFUNDAMENTAL
GOOGLEMAPS_DESC=	Referential Modules - Links Address to Google map
GOOGLEMAPSFUNDAMENTAL_DESC=	Links address to Google map.
GOOGLEMAPSFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-google-maps=${PORTVERSION}:finance/py-trytond-google-maps@${PY_FLAVOR}
#
#OPTIONS_GROUP_INCOTERM=	INCOTERMMOD	# Defines incoterms # Does this exist as a selectable module?
#INCOTERM_DESC=		Referential Modules - Defines Incoterms
#
OPTIONS_GROUP_PARTY=	PARTYFUNDAMENTAL AVATAR RELATIONSHIP SIRET
OPTIONS_DEFAULT+=	PARTYFUNDAMENTAL
PARTY_DESC=		Referential Modules - Identify parties
PARTYFUNDAMENTAL_DESC=		Fundamentals to store parties.
PARTYFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
AVATAR_DESC=		Adds avatar.
AVATAR_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-avatar=${PORTVERSION}:finance/py-trytond-party-avatar@${PY_FLAVOR}
AVATAR_IGNORE=		Module port yet to be completed.
RELATIONSHIP_DESC=		Defines relation between parties.
RELATIONSHIP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-relationship=${PORTVERSION}:finance/py-trytond-party-relationship@${PY_FLAVOR}
RELATIONSHIP_IGNORE=		Module port yet to be completed.
SIRET_DESC=		Adds SIRET and SIREN.
SIRET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-party-siret=${PORTVERSION}:finance/py-trytond-party-siret@${PY_FLAVOR}
#
OPTIONS_GROUP_PRODUCT=	PRODUCTFUNDAMENTAL ATTRIBUTE CLASSIFICATION \
			CLASSIFICATIONTAXONOMIC COSTFIFO COSTHISTORY \
			COSTWAREHOUSE MEASUREMENTS PRODUCTPRICELIST \
			PRICELISTCACHE PRICELISTDATES PRICELISTPARENT \
			IMAGE IMAGEATTRIBUTE KIT
OPTIONS_DEFAULT+=	PRODUCTFUNDAMENTAL IMAGE ATTRIBUTE
PRODUCT_DESC=		Referential Modules - Manages Products
PRODUCTFUNDAMENTAL_DESC=	Fundamentals to manage products.
PRODUCTFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR}
ATTRIBUTE_DESC=		Adds attributes to products.
ATTRIBUTE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-attribute=${PORTVERSION}:finance/py-trytond-product-attribute@${PY_FLAVOR}
CLASSIFICATION_DESC=		Classifies products.
CLASSIFICATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-classification=${PORTVERSION}:finance/py-trytond-product-classification@${PY_FLAVOR}
CLASSIFICATION_IGNORE=		Module port yet to be completed.
CLASSIFICATIONTAXONOMIC_DESC=		Uses Taxonomic classification.
CLASSIFICATIONTAXONOMIC_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-classification-taxonomic=${PORTVERSION}:finance/py-trytond-product-classification-taxonomic@${PY_FLAVOR}
CLASSIFICATIONTAXONOMIC_IGNORE=		Module port yet to be completed.
COSTFIFO_DESC=		Adds FIFO cost method.
COSTFIFO_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-fifo=${PORTVERSION}:finance/py-trytond-product-cost-fifo@${PY_FLAVOR}
COSTFIFO_IGNORE=		Module port yet to be completed.
COSTHISTORY_DESC=		Historize the cost.
COSTHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-history=${PORTVERSION}:finance/py-trytond-product-cost-history@${PY_FLAVOR}
COSTHISTORY_IGNORE=		Module port yet to be completed.
COSTWAREHOUSE_DESC=		Calculate cost prices per warehouse.
COSTWAREHOUSE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-cost-warehouse=${PORTVERSION}:finance/py-trytond-product-cost-warehouse@${PY_FLAVOR}
COSTWAREHOUSE_IGNORE=		Module port yet to be completed.
MEASUREMENTS_DESC=		Adds measurements to products.
MEASUREMENTS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-measurements=${PORTVERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR}
MEASUREMENTS_IGNORE=		Module port yet to be completed.
PRODUCTPRICELIST_DESC=		Computes price.
PRODUCTPRICELIST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list=${PORTVERSION}:finance/py-trytond-product-price-list@${PY_FLAVOR}
PRODUCTPRICELIST_IGNORE=		Module port yet to be completed.
PRICELISTCACHE_DESC=		Pre-compute prices.
PRICELISTCACHE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-cache=${PORTVERSION}:finance/py-trytond-product-price-list-cache@${PY_FLAVOR}
PRICELISTCACHE_IGNORE=		Module port yet to be completed.
PRICELISTDATES_DESC=		Sets start and end date on price lists.
PRICELISTDATES_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-dates=${PORTVERSION}:finance/py-trytond-product-price-list-dates@${PY_FLAVOR}
PRICELISTDATES_IGNORE=		Module port yet to be completed.
PRICELISTPARENT_DESC=		Adds price list cascading.
PRICELISTPARENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-price-list-parent=${PORTVERSION}:finance/py-trytond-product-price-list-parent@${PY_FLAVOR}
PRICELISTPARENT_IGNORE=		Module port yet to be completed.
IMAGE_DESC=		Adds images.
IMAGE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-image=${PORTVERSION}:finance/py-trytond-product-image@${PY_FLAVOR}
IMAGEATTRIBUTE_DESC=		Adds attributes to product images.
IMAGEATTRIBUTE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-image-attribute=${PORTVERSION}:finance/py-trytond-product-image-attribute@${PY_FLAVOR}
IMAGEATTRIBUTE_IGNORE=		Module port yet to be completed.
KIT_DESC=		Add support for product kits.
KIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-product-kit=${PORTVERSION}:finance/py-trytond-product-kit@${PY_FLAVOR}
KIT_IGNORE=		Module port yet to be completed.
#
OPTIONS_GROUP_ADMINISTRATION=	INBOUNDEMAIL AUTHENTICATIOSAML \
				AUTHENTICATIONLDAP \
				NOTIFICATIONEMAIL USERROLE SHOP \
				SHOPSHOPIFY SHOPVUESTOREFRONT \
				SHOPVUESTOREFRONTSTRIPE SHORTENER \
				USER
OPTIONS_DEFAULT+=	INBOUNDEMAIL AUTHENTICATIONLDAP \
			NOTIFICATIONEMAIL USERROLE SHOP USER
# FIXME:	AUTHENTICATIONSMS
ADMINISTRATION_DESC=	Administration Modules - Various
INBOUNDEMAIL_DESC=		Receive email.
INBOUNDEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-inbound-email=${PORTVERSION}:finance/py-trytond-inbound-email@${PY_FLAVOR}
AUTHENTICATIOSAML_DESC=		Authentication per SAML.
AUTHENTICATIOSAML_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-authentication-saml=${PORTVERSION}:finance/py-trytond-authentication-saml@${PY_FLAVOR}
AUTHENTICATIOSAML_IGNORE=		Module port yet to be completed.
# Where is this module???
#AUTHENTICATIONSMS_DESC=		Authentication per SMS.
#AUTHENTICATIONSMS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}=${PORTVERSION}:finance/py-@${PY_FLAVOR}
AUTHENTICATIONLDAP_DESC=	Authentication per LDAP.
AUTHENTICATIONLDAP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-ldap-authentication=${PORTVERSION}:finance/py-trytond-ldap-authentication@${PY_FLAVOR}
NOTIFICATIONEMAIL_DESC=		Sends email.
NOTIFICATIONEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-notification-email=${PORTVERSION}:finance/py-trytond-notification-email@${PY_FLAVOR}
USERROLE_DESC=		Manage user groups with roles.
USERROLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-user-role=${PORTVERSION}:finance/py-trytond-user-role@${PY_FLAVOR}
SHOP_DESC=		Fundamentals to sale online.
SHOP_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop=${PORTVERSION}:finance/py-trytond-web-shop@${PY_FLAVOR}
SHOPSHOPIFY_DESC=		Integration with Shopify.
SHOPSHOPIFY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-shopify=${PORTVERSION}:finance/py-trytond-web-shop-shopify@${PY_FLAVOR}
SHOPSHOPIFY_IGNORE=		Module port yet to be completed.
SHOPVUESTOREFRONT_DESC=		Integration with Vue Storefront.
SHOPVUESTOREFRONT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shop-vue-storefront=${PORTVERSION}:finance/py-trytond-web-shop-vue-storefront@${PY_FLAVOR}
SHOPVUESTOREFRONT_IGNORE=		Module port yet to be completed.
SHOPVUESTOREFRONTSTRIPE_DESC=		Support of Stripe Payment for Vue Storefront.
SHOPVUESTOREFRONTSTRIPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}=${PORTVERSION}:finance/py-@${PY_FLAVOR}
SHOPVUESTOREFRONTSTRIPE_IGNORE=		Module port yet to be completed.
SHORTENER_DESC=		Shortens URL and connects them to actions.
SHORTENER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-shortener=${PORTVERSION}:finance/py-trytond-web-shortener@${PY_FLAVOR}
SHORTENER_IGNORE=		Module port yet to be completed.
USER_DESC=		Manages external users.
USER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-web-user=${PORTVERSION}:finance/py-trytond-web-user@${PY_FLAVOR}
USER_IGNORE=		Module port yet to be completed.

USES=		PYTHON
PYTHON_NO_DEPENDS=	YES

.include <bsd.port.mk>
