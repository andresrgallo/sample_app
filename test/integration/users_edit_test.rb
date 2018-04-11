require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:andres)
  end
  test "Unsuccesfull edit" do
  log_in_as(@user)
  get edit_user_path(@user)
#   assert_template 'users/edit'
#   patch user_path(@user), params: { user: { name:"", email:"invalids@sample", 
#               password: "baz", confirmation_password:"bar"}}
#   assert_template 'users/edit'
#   assert_select 'div.alert', 'The form contains 3 errors.'
end
test "Succesfull edit" do
  log_in_as(@user)
  get edit_user_path(@user)
#   assert_template 'users/edit'
#   patch user_path(@user), params: { user: { name:"foo bar", email:"valid@sample.com", 
#               password: "", confirmation_password:""}}
#   assert_redirected_to @user
#   assert_not flash.empty?
#   # @user.reload
end

end