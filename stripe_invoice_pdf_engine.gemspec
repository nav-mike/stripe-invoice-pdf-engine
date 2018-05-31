# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'stripe_invoice_pdf_engine/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'stripe_invoice_pdf_engine'
  s.version     = StripeInvoicePdfEngine::VERSION
  s.authors     = ['Mikhail Navrotskiy']
  s.email       = ['m.navrotskiy@gmail.com']
  s.homepage    = 'https://github.com/nav-mike/stripe-invoice-pdf-engine'
  s.summary     = 'Simple stripe invoice pdf engine for rails.'
  s.description = 'Simple stripe invoice pdf engine for rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 4.2.1'

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'sqlite3'
end
