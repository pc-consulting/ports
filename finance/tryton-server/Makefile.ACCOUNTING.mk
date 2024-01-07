#
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
ACCOUNTING_DESC=	Operational Modules - Report all Transactions of Your Chart of Accounts
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
RECEIVABLERULE_DESC=		Applies rules to receivable.
RECEIVABLERULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-receivable-rule=${PORTVERSION}:finance/py-trytond-account-receivable-rule@${PY_FLAVOR}
RULE_DESC=		Applies rules on accounts.
RULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-rule=${PORTVERSION}:finance/py-trytond-account-rule@${PY_FLAVOR}
STATEMENT_DESC=		Books bank statement, cash day book etc.
STATEMENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement=${PORTVERSION}:finance/py-trytond-account-statement@${PY_FLAVOR}
STATEMENTAEB43_DESC=		Imports statements in AEB43 format.
STATEMENTAEB43_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-aeb43=${PORTVERSION}:finance/py-trytond-account-statement-aeb43@${PY_FLAVOR}
STATEMENTCODA_DESC=		Imports statements in CODA format.
STATEMENTCODA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-coda=${PORTVERSION}:finance/py-trytond-account-statement-coda@${PY_FLAVOR}
STATEMENTMT940_DESC=		Imports statement in SWIFT Message Type 940 format.
STATEMENTMT940_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-mt940=${PORTVERSION}:finance/py-trytond-account-statement-mt940@${PY_FLAVOR}
STATEMENTOFX_DESC=		Imports statements in OFX format.
STATEMENTOFX_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-ofx=${PORTVERSION}:finance/py-trytond-account-statement-ofx@${PY_FLAVOR}
STATMEMENTRULE_DESC=		Applies rules on imported statements.
STATMEMENTRULE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-rule=${PORTVERSION}:finance/py-trytond-account-statement-rule@${PY_FLAVOR}
STATEMENTSEPA_DESC=		Imports statements in SEPA format.
STATEMENTSEPA_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-statement-sepa=${PORTVERSION}:finance/py-trytond-account-statement-sepa@${PY_FLAVOR}
STOCKANGLOSAXON_DESC=		Values stock using the anglo-saxon method.
STOCKANGLOSAXON_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-anglo-saxon=${PORTVERSION}:finance/py-trytond-account-stock-anglo-saxon@${PY_FLAVOR}
STOCKCONTINENTAL_DESC=		Values stock using the continental method.
STOCKCONTINENTAL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental=${PORTVERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR}
STOCKEUROPEAN_DESC=		Common stock European requirements.
STOCKEUROPEAN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-eu=${PORTVERSION}:finance/py-trytond-account-stock-eu@${PY_FLAVOR}
STOCKLANDEDCOST_DESC=		Allocates landed cost.
STOCKLANDEDCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost=${PORTVERSION}:finance/py-trytond-account-stock-landed-cost@${PY_FLAVOR}
STOCKLANDEDCOSTWEIGHT_DESC=		Allocates landed cost based on weight.
STOCKLANDEDCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-landed-cost-weight=${PORTVERSION}:finance/py-trytond-account-stock-landed-cost-weight@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOST_DESC=		Allocates shipment cost.
ACCOUNTSTOCKSHIPMENTCOST_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-account-stock-shipment-cost@${PY_FLAVOR}
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_DESC=		Allocates shipment cost by weight.
ACCOUNTSTOCKSHIPMENTCOSTWEIGHT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost-weight=${PORTVERSION}:finance/py-trytond-account-stock-shipment-cost-weight@${PY_FLAVOR}
TAXCASH_DESC=		Reports tax on cash basis.
TAXCASH_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-cash=${PORTVERSION}:finance/py-trytond-account-tax-cash@${PY_FLAVOR}
TAXNONDEDUCTIBLE_DESC=		Reports non-deductible tax.
TAXNONDEDUCTIBLE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-non-deductible=${PORTVERSION}:finance/py-trytond-account-tax-non-deductible@${PY_FLAVOR}
TAXRULECOUNTRY_DESC=		Applies taxes per country of origin and destination.
TAXRULECOUNTRY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond-account-tax-rule-country=${PORTVERSION}:finance/py-trytond-account-tax-rule-country@${PY_FLAVOR}
