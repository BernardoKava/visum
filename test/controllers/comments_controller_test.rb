require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { budget_id: @comment.budget_id, cashflow_id: @comment.cashflow_id, commentary: @comment.commentary, delivery_id: @comment.delivery_id, inventory_id: @comment.inventory_id, issue_management_id: @comment.issue_management_id, person_id: @comment.person_id, saving_id: @comment.saving_id, user_id: @comment.user_id } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { budget_id: @comment.budget_id, cashflow_id: @comment.cashflow_id, commentary: @comment.commentary, delivery_id: @comment.delivery_id, inventory_id: @comment.inventory_id, issue_management_id: @comment.issue_management_id, person_id: @comment.person_id, saving_id: @comment.saving_id, user_id: @comment.user_id } }
    assert_redirected_to comment_url(@comment)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end
