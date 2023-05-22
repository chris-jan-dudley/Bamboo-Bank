# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'registering a new user creates new user and sets it as current user in session' do
    post '/users',
         params: { user: { name: 'bob', email: 'bob@bamboo.com', password: 'secret', password_confirmation: 'secret' } }
    assert_response :redirect
    assert_equal User.last.name, 'bob'
    assert_equal session[:user_id], User.last.id
  end
end
