#
OPTIONS_GROUP_ACCOUNTING=	ACCOUNTINGFUNDAMENTAL ACCOUNTINGASSET \
				BELGIAN BUDGET CASHROUNDING \
				CONSOLIDATION CREDITLIMIT DEPOSIT \
				DUNNING DUNNINGEMAIL DUNNINGFEE \
				DUNNINGLETTER SPANISH SPANISHSII \
				EUROPE EXPORT EXPORTWINBOOKS FRENCH \
				FRENCHCHORUS GERMAN \
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
				SYSCOHADA TAXCASH TAXNONDEDUCTIBLE \
				TAXRULECOUNTRY
OPTIONS_DEFAULT+=	ACCOUNTINGFUNDAMENTAL ACCOUNTINGINVOICE \
			INVOICESTOCK ACCOUNTINGPRODUCT
ACCOUNTING_DESC=	Operational Modules - Report all Transactions of Your Chart of Accounts
ACCOUNTINGFUNDAMENTAL_DESC=		Fundamentals for most accounting needs.
ACCOUNTINGFUNDAMENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account@${PY_FLAVOR}
ACCOUNTINGASSET_DESC=		Depreciation of fixed assets.
ACCOUNTINGASSET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-asset>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-asset@${PY_FLAVOR}
BELGIAN_DESC=		Belgian accounting.
BELGIAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-be>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-be@${PY_FLAVOR}
BUDGET_DESC=		Budgets for accounts.
BUDGET_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-budget>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-budget@${PY_FLAVOR}
CASHROUNDING_DESC=		Round cash amounts.
CASHROUNDING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-cash-rounding>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-cash-rounding@${PY_FLAVOR}
CONSOLIDATION_DESC=		Consolidate accounting of multiple companies.
CONSOLIDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-consolidation>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-consolidation@${PY_FLAVOR}
CREDITLIMIT_DESC=		Manages credit limit of parties.
CREDITLIMIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-credit-limit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-credit-limit@${PY_FLAVOR}
DEPOSIT_DESC=		Supports customer deposits.
DEPOSIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-deposit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-deposit@${PY_FLAVOR}
DUNNING_DESC=		Manages dunning on receivables.
DUNNING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning@${PY_FLAVOR}
DUNNINGEMAIL_DESC=		Sends dunning emails.
DUNNINGEMAIL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-email>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning-email@${PY_FLAVOR}
DUNNINGFEE_DESC=	Adds fees to dunnings.
DUNNINGFEE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-fee>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning-fee@${PY_FLAVOR}
DUNNINGLETTER_DESC=		Prints dunning letters.
DUNNINGLETTER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-letter>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning-letter@${PY_FLAVOR}
SPANISH_DESC=		Spanish accounting.
SPANISH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-es>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-es@${PY_FLAVOR}
SPANISHSII_DESC=	Sends invoices to Subministro Inmediato de Informacion (SII).
SPANISHSII_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-es-sii>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-es-sii@${PY_FLAVOR}
EUROPE_DESC=		Common European requirements.
EUROPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-eu>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-eu@${PY_FLAVOR}
EXPORT_DESC=		Export accounting to other software.
EXPORT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-export>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-export@${PY_FLAVOR}
EXPORTWINBOOKS_DESC=		Export accounting to WinBooks.
EXPORTWINBOOKS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-export-winbooks>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-export-winbooks@${PY_FLAVOR}
FRENCH_DESC=		French accounting.
FRENCH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-fr>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-fr@${PY_FLAVOR}
FRENCHCHORUS_DESC=		Sends invoices via Chorus Pro.
FRENCHCHORUS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-fr-chorus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-fr-chorus@${PY_FLAVOR}
GERMAN_DESC=		German "Standardkontenrahmen 03" accounting.
GERMAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-de-skr03>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-de-skr03@${PY_FLAVOR}
ACCOUNTINGINVOICE_DESC=		Manages customer and supplier invoices.
ACCOUNTINGINVOICE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR}
INVOICECORRECTION_DESC=		Correct price on posted invoices.
INVOICECORRECTION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-correction>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-correction@${PY_FLAVOR}
INVOICEDEFER_DESC=		Defer expense and revenue.
INVOICEDEFER_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-defer>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-defer@${PY_FLAVOR}
INVOICEHISTORY_DESC=		Historize invoice.
INVOICEHISTORY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-history>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-history@${PY_FLAVOR}
INVOICELINESTANDALONE_DESC=		Supports invoice line without invoice.
INVOICELINESTANDALONE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-line-standalone>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-line-standalone@${PY_FLAVOR}
INVOICESECONDARYUNIT_DESC=		Adds a secondary unit of measure.
INVOICESECONDARYUNIT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-secondary-unit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-secondary-unit@${PY_FLAVOR}
INVOICESTOCK_DESC=		Links invoice lines and stock moves.
INVOICESTOCK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR}
INVOICEWATERMARK_DESC=		Adds watermark to printed invoices.
INVOICEWATERMARK_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-watermark>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-watermark@${PY_FLAVOR}
MOVELINEGROUPING_DESC=		Show move line grouped.
MOVELINEGROUPING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-move-line-grouping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-move-line-grouping@${PY_FLAVOR}
ACCOUNTINGPAYMENT_DESC=		Manages payments.
ACCOUNTINGPAYMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment@${PY_FLAVOR}
PAYMENTBRAINTREE_DESC=		Receives payment from Braintree.
PAYMENTBRAINTREE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-braintree>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-braintree@${PY_FLAVOR}
PAYMENTCLEARING_DESC=		Uses clearing account for payments.
PAYMENTCLEARING_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-clearing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-clearing@${PY_FLAVOR}
PAYMENTSEPA_DESC=		Genrates SEPA messages for payments.
PAYMENTSEPA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-sepa>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-sepa@${PY_FLAVOR}
PAYMENTSEPACFONB_DESC=		Adds CFONB flavors to SEPA.
PAYMENTSEPACFONB_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-sepa-cfonb>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-sepa-cfonb@${PY_FLAVOR}
PAYMENTSTRIPE_DESC=		Receives payment from Stripe.
PAYMENTSTRIPE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-payment-stripe>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-payment-stripe@${PY_FLAVOR}
ACCOUNTINGPRODUCT_DESC=		Adds accounting on product and category.
ACCOUNTINGPRODUCT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-product@${PY_FLAVOR}
RECEIVABLERULE_DESC=		Applies rules to receivable.
RECEIVABLERULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-receivable-rule>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-receivable-rule@${PY_FLAVOR}
RULE_DESC=		Applies rules on accounts.
RULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-rule>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-rule@${PY_FLAVOR}
STATEMENT_DESC=		Books bank statement, cash day book etc.
STATEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement@${PY_FLAVOR}
STATEMENTAEB43_DESC=		Imports statements in AEB43 format.
STATEMENTAEB43_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-aeb43>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-aeb43@${PY_FLAVOR}
STATEMENTCODA_DESC=		Imports statements in CODA format.
STATEMENTCODA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-coda>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-coda@${PY_FLAVOR}
STATEMENTMT940_DESC=		Imports statement in SWIFT Message Type 940 format.
STATEMENTMT940_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-mt940>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-mt940@${PY_FLAVOR}
STATEMENTOFX_DESC=		Imports statements in OFX format.
STATEMENTOFX_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-ofx>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-ofx@${PY_FLAVOR}
STATMEMENTRULE_DESC=		Applies rules on imported statements.
STATMEMENTRULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-rule>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-rule@${PY_FLAVOR}
STATEMENTSEPA_DESC=		Imports statements in SEPA format.
STATEMENTSEPA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-sepa>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-statement-sepa@${PY_FLAVOR}
STOCKANGLOSAXON_DESC=		Values stock using the anglo-saxon method.
STOCKANGLOSAXON_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-anglo-saxon>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-anglo-saxon@${PY_FLAVOR}
STOCKCONTINENTAL_DESC=		Values stock using the continental method.
STOCKCONTINENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR}
STOCKEUROPEAN_DESC=		Common stock European requirements.
STOCKEUROPEAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-eu>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-eu@${PY_FLAVOR}
STOCKLANDEDCOST_DESC=		Allocates landed cost.
STOCKLANDEDCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-landed-cost@${PY_FLAVOR}
STOCKLANDEDCOSTWEIGHT_DESC=		Allocates landed cost based on weight.
STOCKLANDEDCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost-weight>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-landed-cost-weight@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOST_DESC=		Allocates shipment cost.
ACCOUNTSTOCKSHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-shipment-cost@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_DESC=		Allocates shipment cost by weight.
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost-weight>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-shipment-cost-weight@${PY_FLAVOR}
SYSCOHADA_DESC=		SYSCOHADA chart of accounts.
SYSCOHADA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-syscohada>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-syscohada@${PY_FLAVOR}
TAXCASH_DESC=		Reports tax on cash basis.
TAXCASH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-cash>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-tax-cash@${PY_FLAVOR}
TAXNONDEDUCTIBLE_DESC=		Reports non-deductible tax.
TAXNONDEDUCTIBLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-non-deductible>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-tax-non-deductible@${PY_FLAVOR}
TAXRULECOUNTRY_DESC=		Applies taxes per country of origin and destination.
TAXRULECOUNTRY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-rule-country>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-tax-rule-country@${PY_FLAVOR}
