# frozen_string_literal: true

module StripeInvoicePdfEngine
  class Config
    def initialize(options)
      @options = options
    end

    def api_key
      @options[:api_key]
    end

    def company_logo
      @options[:company_logo]
    end

    def layout
      @options[:layout] ||
        'stripe_invoice_pdf_engine/application.html'
    end

    def api_key=(key)
      @options[:api_key] = key
    end

    def company_logo=(logo)
      @options[:company_logo] = logo
    end

    def layout=(path)
      @options[:layout] = path
    end
  end
end
