require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(username: "amyzan24", email: "zanizm@gmail.com", password: "Rhyn0f0f*24")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = "    "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "   "
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = "   "
    assert_not @user.valid?
  end
end
