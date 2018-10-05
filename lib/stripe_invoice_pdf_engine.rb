# frozen_string_literal: true

require 'stripe_invoice_pdf_engine/engine'
require 'stripe_invoice_pdf_engine/config'
require 'stripe_invoice_pdf_engine/railtie'
require 'stripe_invoice_pdf_engine/version'

require 'stripe_invoice_pdf_engine/invoice'
require 'wicked_pdf'

module StripeInvoicePdfEngine
  @@config = nil

  def self.configure(options = {})
    @@config = StripeInvoicePdfEngine::Config.new options
    yield @@config if block_given?
    @@config
  end

  def self.config
    @@config
  end
end
