require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "logging in creates a new session with the user id" do
    post '/session', 
        params: { email: users(:chris).email, password: 'secret' }
    assert_response :redirect
    assert_equal session[:user_id], users(:chris).id
  end
end