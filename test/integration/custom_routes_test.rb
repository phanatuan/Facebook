require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /sign_in routes open the sign in page" do 
  	get '/sign_in'
  	assert_response :success
  end

  test "that /sign_out routes will log us out" do 
  	get '/sign_out'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /register routes open the signup page" do 
  	get '/register'
  	assert_response :success
  end

end
