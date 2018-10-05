# frozen_string_literal: true

require_dependency 'stripe_invoice_pdf_engine/application_controller'

module StripeInvoicePdfEngine
  class InvoicesController < ApplicationController
    def show
      @invoice = StripeInvoicePdfEngine::Invoice.new(params[:invoice_id])
      render_invoice @invoice
    end
  end
end
