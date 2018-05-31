# frozen_string_literal: true

if defined?(Rails)
  class StripeInvoicePdfEngineGenerator < Rails::Generators::Base
    def copy_initializer
      generate 'stripe_invoice_pdf'
    end
  end
end
