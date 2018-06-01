# frozen_string_literal: true

require_relative 'stripe_invoice_pdf_engine_helper'

module StripeInvoicePdfEngine
  if defined?(Rails)
    if Rails::VERSION::MAJOR >= 5
      class StripeInvoicePdfEngineRailtie < Rails::Railtie
        initializer 'stripe_invoice_pdf_engine.register' do |_app|
          ActionController::Base.send :prepend, StripeInvoicePdfEngineHelper
        end
      end
    elsif RAILS::VERSION::MAJOR == 4
      class StripeInvoicePdfEngineRailtie < Rails::Railtie
        initializer 'stripe_invoice_pdf_engine.register' do |_app|
          ActionController::Base.send :prepend, StripeInvoicePdfEngineHelper
        end
      end
    end
  end
end
