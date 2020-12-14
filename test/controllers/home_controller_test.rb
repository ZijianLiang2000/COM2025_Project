require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'NBA League Forum'
    assert_select 'h1', 'Contact Form'

  end
  
  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]

  end

  test "should post request contact" do
    post request_contact_url, params:
      {name: "Matthew", email: "matthew@me.com", nbaPassCode: "1104777236",
       telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_not_nil flash[:alert]
    assert_not_empty flash[:notice]

  end
  

end
