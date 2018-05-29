$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "stripe_invoice_pdf_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "stripe_invoice_pdf_engine"
  s.version     = StripeInvoicePdfEngine::VERSION
  s.authors     = ["Mikhail Navrotskiy"]
  s.email       = ["m.navrotskiy@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of StripeInvoicePdfEngine."
  s.description = "TODO: Description of StripeInvoicePdfEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
