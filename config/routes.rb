# frozen_string_literal: true

StripeInvoicePdfEngine::Engine.routes.draw do
  get 'invoices/:invoice_id' => 'invoices#show', constraints: { invoice_id: /[a-z0-9\_]+/i }
end
