# frozen_string_literal: true

module StripeInvoicePdfEngine
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
