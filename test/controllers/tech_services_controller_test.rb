require 'test_helper'

class TechServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_service = tech_services(:one)
  end

  test "should get index" do
    get tech_services_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_service_url
    assert_response :success
  end

  test "should create tech_service" do
    assert_difference('TechService.count') do
      post tech_services_url, params: { tech_service: { active: @tech_service.active, description: @tech_service.description, name: @tech_service.name, notes: @tech_service.notes, user_id: @tech_service.user_id } }
    end

    assert_redirected_to tech_service_url(TechService.last)
  end

  test "should show tech_service" do
    get tech_service_url(@tech_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_service_url(@tech_service)
    assert_response :success
  end

  test "should update tech_service" do
    patch tech_service_url(@tech_service), params: { tech_service: { active: @tech_service.active, description: @tech_service.description, name: @tech_service.name, notes: @tech_service.notes, user_id: @tech_service.user_id } }
    assert_redirected_to tech_service_url(@tech_service)
  end

  test "should destroy tech_service" do
    assert_difference('TechService.count', -1) do
      delete tech_service_url(@tech_service)
    end

    assert_redirected_to tech_services_url
  end
end
