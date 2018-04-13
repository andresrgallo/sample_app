require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @user = users(:andres)
    @post = @user.posts.build(content:"Lorem ipsum")
  end
  test "Post Should be valid" do
    assert @post.valid?
  end
  test "user id should be present" do
    @post.user_id = nil
    assert_not @post.valid?
  end
  test "Content should be present" do
    assert @post.valid?
  end
  test "Content should be at most 140 characters long" do
    @post.content = "a" * 141
    assert_not @post.valid?
  end
  test "order should be most recent first" do
    assert_equal posts(:most_recent), Post.first
  end
end
