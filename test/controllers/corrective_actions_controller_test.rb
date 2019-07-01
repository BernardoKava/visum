require 'test_helper'

class CorrectiveActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corrective_action = corrective_actions(:one)
  end

  test "should get index" do
    get corrective_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_corrective_action_url
    assert_response :success
  end

  test "should create corrective_action" do
    assert_difference('CorrectiveAction.count') do
      post corrective_actions_url, params: { corrective_action: { active: @corrective_action.active, actual_completion_date: @corrective_action.actual_completion_date, description: @corrective_action.description, issue_management_id: @corrective_action.issue_management_id, person_id: @corrective_action.person_id, target_completion_date: @corrective_action.target_completion_date, title: @corrective_action.title, user_id: @corrective_action.user_id } }
    end

    assert_redirected_to corrective_action_url(CorrectiveAction.last)
  end

  test "should show corrective_action" do
    get corrective_action_url(@corrective_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_corrective_action_url(@corrective_action)
    assert_response :success
  end

  test "should update corrective_action" do
    patch corrective_action_url(@corrective_action), params: { corrective_action: { active: @corrective_action.active, actual_completion_date: @corrective_action.actual_completion_date, description: @corrective_action.description, issue_management_id: @corrective_action.issue_management_id, person_id: @corrective_action.person_id, target_completion_date: @corrective_action.target_completion_date, title: @corrective_action.title, user_id: @corrective_action.user_id } }
    assert_redirected_to corrective_action_url(@corrective_action)
  end

  test "should destroy corrective_action" do
    assert_difference('CorrectiveAction.count', -1) do
      delete corrective_action_url(@corrective_action)
    end

    assert_redirected_to corrective_actions_url
  end
end
