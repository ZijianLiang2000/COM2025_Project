require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers
  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

  test 'should save valid user' do
    user = User.new
    user.email = "bob@email.com"
    user.password = "Qw93827294"
    user.save
    assert user.valid?
  end
  
  test 'sign in'do
  sign_in users(:one)
  sign_in users(:one), scope: :admin
  
  sign_out :user
  end

end
