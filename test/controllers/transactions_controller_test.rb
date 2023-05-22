# frozen_string_literal: true

require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    post '/session', params: { email: users(:chris).email, password: 'secret' }
  end

  test 'creating a new transaction should debit payer account and credit payee account' do
    post '/transactions',
         params: { transaction: { amount: 10, payee_id: users(:tom).id } }
    assert_response :redirect
    assert_equal 110, users(:tom).reload.balance
    assert_equal 90, users(:chris).reload.balance
  end

  test 'creating a new transaction with no amount should fail' do
    # TODO: better handling for error being thrown when no amount is given
  end
end
