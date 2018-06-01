# StripeInvoicePdfEngine

[![Waffle.io - Columns and their card count](https://badge.waffle.io/nav-mike/stripe-invoice-pdf-engine.svg?columns=all)](https://waffle.io/nav-mike/stripe-invoice-pdf-engine)

This is a engine wrapper for [Stripe Invoice PDF](https://github.com/nav-mike/stripe-invoice-pdf) gem.

### Installation

Add this lines to your application's Gemfile:

```ruby
gem 'stripe_invoice_pdf', git: 'https://github.com/nav-mike/stripe-invoice-pdf.git', branch: 'engine'
gem 'stripe_invoice_pdf_engine', git: 'https://github.com/nav-mike/stripe-invoice-pdf-engine.git'
```

And then execute:
```bash
$ bundle install
```

Then create the initializer with:

```bash
$ rails generate stripe_invoice_pdf_engine
```

Configure [`stripe_invoice_pdf`](https://github.com/nav-mike/stripe-invoice-pdf/blob/master/README.md#installation).

And add engine to `config/routes.rb`

```ruby
mount StripeInvoicePdfEngine::Engine => '/stripe_invoice_pdf_engine'
```

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
