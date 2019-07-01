require 'test_helper'

class RulesCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rules_category = rules_categories(:one)
  end

  test "should get index" do
    get rules_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_rules_category_url
    assert_response :success
  end

  test "should create rules_category" do
    assert_difference('RulesCategory.count') do
      post rules_categories_url, params: { rules_category: { description: @rules_category.description, name: @rules_category.name } }
    end

    assert_redirected_to rules_category_url(RulesCategory.last)
  end

  test "should show rules_category" do
    get rules_category_url(@rules_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_rules_category_url(@rules_category)
    assert_response :success
  end

  test "should update rules_category" do
    patch rules_category_url(@rules_category), params: { rules_category: { description: @rules_category.description, name: @rules_category.name } }
    assert_redirected_to rules_category_url(@rules_category)
  end

  test "should destroy rules_category" do
    assert_difference('RulesCategory.count', -1) do
      delete rules_category_url(@rules_category)
    end

    assert_redirected_to rules_categories_url
  end
end
