require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers

  # Test that invalid User object (without email and password parameters) wouldn't be saved
  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

  # Test that valid User object (with email and password parameters) would be saved
  test 'should save valid user' do
    user = User.new
    user.email = "bob@email.com"
    user.password = "Qw93827294"
    user.save
    assert user.valid?
  end
  
  # Test that sign-in and sign-out function for User object is working
  test 'sign in'do
    sign_in users(:one)
    sign_in users(:one), scope: :admin
    
    sign_out :user
  end

end
