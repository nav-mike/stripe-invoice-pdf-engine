Rails.application.routes.draw do
  mount StripeInvoicePdfEngine::Engine => "/"
end
