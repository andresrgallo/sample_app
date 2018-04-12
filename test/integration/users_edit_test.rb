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
test "successful edit with friendly forwarding" do
  get edit_user_path(@user)
  log_in_as(@user)
  assert_redirected_to edit_user_url(@user)
  patch user_path(@user), params: { user: { name:"foo bar", email:"valid@sample.com", 
              password: "", confirmation_password:""}}
  assert_not flash.empty?
  assert_redirected_to @user
# @user.reload
end

end