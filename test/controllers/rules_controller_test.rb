require 'test_helper'

class RulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rule = rules(:one)
  end

  test "should get index" do
    get rules_url
    assert_response :success
  end

  test "should get new" do
    get new_rule_url
    assert_response :success
  end

  test "should create rule" do
    assert_difference('Rule.count') do
      post rules_url, params: { rule: { active: @rule.active, category: @rule.category, definition: @rule.definition, policy_code: @rule.policy_code, rules_category_id: @rule.rules_category_id, title: @rule.title, user_id: @rule.user_id } }
    end

    assert_redirected_to rule_url(Rule.last)
  end

  test "should show rule" do
    get rule_url(@rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_rule_url(@rule)
    assert_response :success
  end

  test "should update rule" do
    patch rule_url(@rule), params: { rule: { active: @rule.active, category: @rule.category, definition: @rule.definition, policy_code: @rule.policy_code, rules_category_id: @rule.rules_category_id, title: @rule.title, user_id: @rule.user_id } }
    assert_redirected_to rule_url(@rule)
  end

  test "should destroy rule" do
    assert_difference('Rule.count', -1) do
      delete rule_url(@rule)
    end

    assert_redirected_to rules_url
  end
end
