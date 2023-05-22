# frozen_string_literal: true

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'logging in creates a new session with the user id' do
    post '/session',
         params: { email: users(:chris).email, password: 'secret' }
    assert_response :redirect
    assert_equal session[:user_id], users(:chris).id
  end

  test 'logging out destroys the session and resets current user' do
    delete '/session',
           params: { id: users(:chris).id }
  end
end
