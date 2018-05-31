# frozen_string_literal: true

require 'test_helper'

module StripeInvoicePdfEngine
  class Test < ActiveSupport::TestCase
    test 'truth' do
      assert_kind_of Module, StripeInvoicePdfEngine
    end
  end
end
