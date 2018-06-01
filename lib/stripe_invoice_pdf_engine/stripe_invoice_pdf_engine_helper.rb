# frozen_string_literal: true

module StripeInvoicePdfEngine
  module StripeInvoicePdfEngineHelper
    def render_invoice(invoice, _options = {})
      render pdf: "Invoice-#{invoice.number}",
             template: 'stripe_invoice_pdf_engine/invoices/show.pdf.erb',
             layout: 'stripe_invoice_pdf_engine/application.html',
             show_as_html: show_as_html?
    end

    def show_as_html?
      (Rails.env.development? || Rails.env.test?) && params.key?('dedbug')
    end
  end
end
