require 'test_helper'

class FunctionalLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @functional_level = functional_levels(:one)
  end

  test "should get index" do
    get functional_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_functional_level_url
    assert_response :success
  end

  test "should create functional_level" do
    assert_difference('FunctionalLevel.count') do
      post functional_levels_url, params: { functional_level: { active: @functional_level.active, description: @functional_level.description, name: @functional_level.name, notes: @functional_level.notes, user_id: @functional_level.user_id } }
    end

    assert_redirected_to functional_level_url(FunctionalLevel.last)
  end

  test "should show functional_level" do
    get functional_level_url(@functional_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_functional_level_url(@functional_level)
    assert_response :success
  end

  test "should update functional_level" do
    patch functional_level_url(@functional_level), params: { functional_level: { active: @functional_level.active, description: @functional_level.description, name: @functional_level.name, notes: @functional_level.notes, user_id: @functional_level.user_id } }
    assert_redirected_to functional_level_url(@functional_level)
  end

  test "should destroy functional_level" do
    assert_difference('FunctionalLevel.count', -1) do
      delete functional_level_url(@functional_level)
    end

    assert_redirected_to functional_levels_url
  end
end
