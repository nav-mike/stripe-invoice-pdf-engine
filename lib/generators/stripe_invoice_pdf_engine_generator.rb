# frozen_string_literal: true

if defined?(Rails)
  class StripeInvoicePdfEngineGenerator < Rails::Generators::Base
    source_root(File.expand_path(File.dirname(__FILE__) + '/../templates'))

    def copy_initializer
      copy_file 'stripe_invoice_pdf_engine.rb', 'config/initializers/stripe_invoice_pdf_engine.rb'

      inject_into_file 'config/routes.rb', after: 'Rails.application.routes.draw do' do
        "\n  mount StripeInvoicePdfEngine::Engine => '/stripe_invoice_pdf_engine'\n"
      end

      generate 'wicked_pdf'
    end
  end
end
