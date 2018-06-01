# frozen_string_literal: true

# StripeInvoicePdf Global Configuration
#
# Use this to set up shared configuration options for your entire application.
#
# To learn mode, check out the README:
#
# https://github.com/nav-mike/stripe-invoice-pdf/blob/master/README.md

StripeInvoicePdfEngine.configure do |config|
  # Define your Stripe api_key:
  #
  # config.api_key = 'sk_...'
  #
  # Add your logo here.
  #
  # config.company_logo = 'logo.png'
  #
  # Define pdf layout
  #
  config.layout = 'stripe_invoice_pdf_engine/application.html'
  #
  # Define pdf template
  #
  # config.template = 'stripe_invoice_pdf_engine/invoices/show.pdf.erb'
end
