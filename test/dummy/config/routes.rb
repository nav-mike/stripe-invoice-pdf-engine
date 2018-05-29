Rails.application.routes.draw do
  mount StripeInvoicePdfEngine::Engine => "/stripe_invoice_pdf_engine"
end
