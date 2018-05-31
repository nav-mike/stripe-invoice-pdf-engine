# frozen_string_literal: true

require_dependency 'stripe_invoice_pdf_engine/application_controller'

module StripeInvoicePdfEngine
  class InvoicesController < ApplicationController
    def show
      @invoice = StripeInvoicePdf::Invoice.new(params[:invoice_id])
      render pdf: "Invoice-#{@invoice.number}",
             template: 'stripe_invoice_pdf_engine/invoices/show.pdf.erb',
             layout: 'stripe_invoice_pdf_engine/application.html',
             show_as_html: show_as_html?
    end

    private

    def show_as_html?
      (Rails.env.development? || Rails.env.test?) && params.key?('debug')
    end
  end
end
