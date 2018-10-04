# frozen_string_literal: true

module StripeInvoicePdfEngine
  module StripeInvoicePdfEngineHelper
    def render_invoice(invoice, options = {})
      render pdf: "Invoice-#{invoice.number}",
             template: options[:template] || StripeInvoicePdfEngine.config.template,
             layout: options[:layout] || StripeInvoicePdfEngine.config.layout,
             show_as_html: show_as_html?
    end

    def show_as_html?
      (Rails.env.development? || Rails.env.test?) && params.key?('dedbug')
    end
  end
end
