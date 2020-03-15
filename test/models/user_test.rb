require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #presence
  test "should not create user withouth email" do
    @user = User.create(password:'123456')
    @user.save
    assert_not @user.valid?
  end
  
   #unicidad
  test "should not create two users with same email" do
    @user = User.create(email:'prueba@gmail.com', password:'123456')
    @user.save
    @usertest= User.create(email:'prueba@gmail.com', password:'123456')
    @usertest.save
    assert_not @usertest.valid?
  end 

  #inclusion (between 6 and 20 digits)
  test "password should not be shorter than 6 digits" do
    @user = User.create(email:'prueba@gmail.com', password:'12345')
    @user.save
    assert_not @user.valid?
  end
  test "password should not be longer than 20 digits" do
    @user = User.create(email:'prueba@gmail.com', password:'123456789101112131415')
    @user.save
    assert_not @user.valid?
  end
end
