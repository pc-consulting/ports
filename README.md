This folder contains the FreeBSD ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16

Considered *alpha/beta* (i. e. may or may not be a starting point for a working port):

- comms/gnuradio
    - _Any more knowledgeable testers/takers more than welcome._
    - Still pretty drafty port, pending better organization in Makefile, etc.
    - gr-qtgui does not find qwt and disables (though I think it's there)
    - Build hangs in staging creating Freedesktop items:
        Begin freedesktop install...
        Install icon: 16x16
        Install icon: 24x24
        Install icon: 32x32
        Install icon: 48x48
        Install icon: 64x64
        Install icon: 128x128
        Install icon: 256x256
        Install mime type
        Install menu items
      (and remaining here forever)
    - pkg-plist likely well outdated
    - Only attempted to build all OPTIONS so far, needs much more testing
        => Someone more knowledgeable may wish to suggest to remove some of them
    - WX is a loose end in Makefile, see comments and commented-out bits there
    - Currently does not see Qwt6 yet
- finance/py-tryton*
    - General observations, unless noted more specifically below:
        - (Relatively naively) created with the help of pytoport, with obvious required amendments.
        - OpenBSD and netbsd (used to) have the port in the devel category, pytoport suggested the same. I currently do not see a use beyond tryton itself and hence decided to put it in finance.
        - portlint passes
        - Otherwise untested
        - Distfiles go to DIST_SUBDIR=Tryton
    - finance/py-tryton
        - Desktop client of the Tryton business suite
    - finance/py-trytond
        - Server of the Tryton business suite
        - Does not depend on postgres but the port will need a database => TBD
    - finance/py-trytond-*
        - Modules for Tryton server
        - Passing portlint, and (if applicable) with complete tryton.cfg dependencies in Makefile: py-proteus, py-trytond-account, py-trytond-account-invoice, py-trytond-account-invoice-stock, py-trytond-account-product, py-trytond-analytic-account, py-trytond-attendance, py-trytond-bank, py-trytond-carrier, py-trytond-commission, py-trytond-company, py-trytond-company-work-time, py-trytond-country, py-trytond-customs, py-trytond-currency, py-trytond-dashboard, py-trytond-document-incoming, py-trytond-edocument-uncefact, py-trytond-edocument-unece, py-trytond-gis, py-trytond-google-maps, py-trytond-inbound-email, py-trytond-ldap-authentication, py-trytond-marketing, py-trytond-notification-email, py-trytond-party, py-trytond-product, py-trytond-product-attribute, py-trytond-product-image, py-trytond-production, py-trytond-project, py-trytond-purchase, py-trytond-purchase-request, py-trytond-quality, py-trytond-sale, py-trytond-sale-supply, py-trytond-sale-supply-drop-shipment, py-trytond-stock, py-trytond-stock-lot, py-trytond-timesheet, py-trytond-user-role, py-trytond-web-shop, py-trytond-web-user
        - As-created by pytoport, not usable yet: py-trytond-account-asset, py-trytond-account-be, py-trytond-account-budget, py-trytond-account-cash-rounding, py-trytond-account-consolidation, py-trytond-account-credit-limit, py-trytond-account-deposit, py-trytond-account-dunning, py-trytond-account-dunning-email, py-trytond-account-dunning-fee, py-trytond-account-dunning-letter, py-trytond-account-es, py-trytond-account-es-sii, py-trytond-account-eu, py-trytond-account-fr, py-trytond-account-fr-chorus, py-trytond-account-invoice-correction, py-trytond-account-invoice-defer, py-trytond-account-invoice-history, py-trytond-account-invoice-line-standalone, py-trytond-account-invoice-secondary-unit, py-trytond-account-invoice-watermark, py-trytond-account-move-line-grouping, py-trytond-account-payment, py-trytond-account-payment-braintree, py-trytond-account-payment-clearing, py-trytond-account-payment-sepa, py-trytond-account-payment-sepa-cfonb, py-trytond-account-payment-stripe, py-trytond-account-receivable-rule, py-trytond-account-rule, py-trytond-account-statement, py-trytond-account-statement-aeb43, py-trytond-account-statement-coda, py-trytond-account-statement-mt940, py-trytond-account-statement-ofx, py-trytond-account-statement-rule, py-trytond-account-statement-sepa, py-trytond-account-stock-anglo-saxon, py-trytond-account-stock-continental, py-trytond-account-stock-eu, py-trytond-account-stock-landed-cost, py-trytond-account-stock-landed-cost-weight, py-trytond-account-stock-shipment-cost, py-trytond-account-stock-shipment-cost-weight, py-trytond-account-tax-cash, py-trytond-account-tax-non-deductible, py-trytond-account-tax-rule-country, py-trytond-stock-split, py-trytond-stock-supply-day, py-trytond-stock-supply-forecast, py-trytond-stock-supply-production, py-trytond-timesheet-cost, py-trytond-web-shop-shopify, py-trytond-web-shop-vue-storefront, py-trytond-web-shortener, py-trytond-stock-shipment-measurements, py-trytond-stock-shipment-cost-weight, py-trytond-stock-shipment-cost, py-trytond-stock-secondary-unit, py-trytond-stock-quantity-issue, py-trytond-stock-quantity-early-planning, py-trytond-stock-product-location, py-trytond-stock-package-shipping-ups, py-trytond-stock-package-shipping-sendcloud, py-trytond-stock-package-shipping-mygls, py-trytond-stock-package-shipping-dpd, py-trytond-stock-package-shipping, py-trytond-stock-package, py-trytond-stock-lot-unit, py-trytond-stock-lot-sled, py-trytond-stock-location-sequence, py-trytond-stock-location-move, py-trytond-stock-inventory-location, py-trytond-stock-forecast, py-trytond-stock-consignment, py-trytond-stock-assign-manual, py-trytond-sale-supply-production, py-trytond-sale-subscription-asset, py-trytond-sale-stock-quantity, py-trytond-sale-shipment-tolerance, py-trytond-sale-shipment-grouping, py-trytond-sale-shipment-cost, py-trytond-sale-secondary-unit, py-trytond-sale-promotion-coupon-payment, py-trytond-sale-promotion-coupon, py-trytond-sale-promotion, py-trytond-sale-product-recommendation-association-rule, py-trytond-sale-product-recommendation, py-trytond-sale-product-quantity, py-trytond-sale-product-customer, py-trytond-sale-price-list, py-trytond-sale-point, py-trytond-sale-payment, py-trytond-sale-opportunity, py-trytond-sale-invoice-grouping, py-trytond-sale-invoice-date, py-trytond-sale-history, py-trytond-sale-gift-card, py-trytond-sale-extra, py-trytond-sale-discount, py-trytond-sale-credit-limit, py-trytond-sale-complaint, py-trytond-sale-blanket-agreement, py-trytond-sale-amendment, py-trytond-sale-advance-payment, py-trytond-purchase-shipment-cost, py-trytond-purchase-secondary-unit, py-trytond-purchase-requisition, py-trytond-purchase-request-quotation, py-trytond-purchase-product-quantity, py-trytond-purchase-price-list, py-trytond-purchase-invoice-line-standalone, py-trytond-purchase-history, py-trytond-purchase-blanket-agreement, py-trytond-purchase-amendment, py-trytond-project-revenue, py-trytond-project-plan, py-trytond-project-invoice, py-trytond-production-work-timesheet, py-trytond-production-work, py-trytond-production-split, py-trytond-production-routing, py-trytond-production-outsourcing, py-trytond-product-price-list-parent, py-trytond-product-price-list-dates, py-trytond-product-price-list-cache, py-trytond-product-price-list, py-trytond-product-measurements, py-trytond-product-kit, py-trytond-product-image-attribute, py-trytond-product-cost-warehouse, py-trytond-product-cost-history, py-trytond-product-cost-fifo, py-trytond-product-classification-taxonomic, py-trytond-product-classification, py-trytond-party-siret, py-trytond-party-relationship, py-trytond-party-avatar, py-trytond-marketing-email, py-trytond-marketing-campaign, py-trytond-marketing-automation, py-trytond-document-incoming-ocr-typless, py-trytond-document-incoming-ocr, py-trytond-document-incoming-invoice, py-trytond-currency-ro, py-trytond-currency-rs, py-trytond-commission-waiting, py-trytond-carrier-weight, py-trytond-carrier-subdivision, py-trytond-carrier-percentage, py-trytond-carrier-carriage, py-trytond-authentication-saml, py-trytond-analytic-sale, py-trytond-analytic-purchase, py-trytond-analytic-invoice, py-trytond-analytic-budget, py-trytond-account-de-skr03
- ports-mgmt/pytoport
    - Python version parsing apparently has changed a bit in ports. The patch adds a '.0' to USES= so that the checks pass.
    - Made the handling of COMMENT in Makefile resilient to inconvenient pipy.org package information.
    - PORTREVISION bumped to 1 accordingly.
    - There still may be an issue with handling underscores '_' in distribution file names which seem to be converted to dashes '-' unconditionally. Subsequently, download of distfiles with underscores in their names fails.
- www/cloudlog
    - Still very drafty port
    - Makefile needs completion to install files from files/ to where they belong
    - pkg-plist needs updating accordingly (e. g. examples dir)
    - pkg-message currently contains fixed paths
    - Entirely untested
- science/py-bluesky
    - Needs update to latest sources prior to any further work

Considered *pre-alpha* (i. e. likely a waste of time):

- Any port not detailed above
