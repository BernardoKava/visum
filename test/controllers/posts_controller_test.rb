require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { delivery_id: @post.delivery_id, description: @post.description, owner: @post.owner, post_type: @post.post_type, post_type_id: @post.post_type_id, scanned: @post.scanned, signed_for_by: @post.signed_for_by, user_id: @post.user_id } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { delivery_id: @post.delivery_id, description: @post.description, owner: @post.owner, post_type: @post.post_type, post_type_id: @post.post_type_id, scanned: @post.scanned, signed_for_by: @post.signed_for_by, user_id: @post.user_id } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
