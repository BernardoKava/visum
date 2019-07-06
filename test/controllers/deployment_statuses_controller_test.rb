require 'test_helper'

class DeploymentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deployment_status = deployment_statuses(:one)
  end

  test "should get index" do
    get deployment_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_deployment_status_url
    assert_response :success
  end

  test "should create deployment_status" do
    assert_difference('DeploymentStatus.count') do
      post deployment_statuses_url, params: { deployment_status: { active: @deployment_status.active, description: @deployment_status.description, name: @deployment_status.name, notes: @deployment_status.notes } }
    end

    assert_redirected_to deployment_status_url(DeploymentStatus.last)
  end

  test "should show deployment_status" do
    get deployment_status_url(@deployment_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_deployment_status_url(@deployment_status)
    assert_response :success
  end

  test "should update deployment_status" do
    patch deployment_status_url(@deployment_status), params: { deployment_status: { active: @deployment_status.active, description: @deployment_status.description, name: @deployment_status.name, notes: @deployment_status.notes } }
    assert_redirected_to deployment_status_url(@deployment_status)
  end

  test "should destroy deployment_status" do
    assert_difference('DeploymentStatus.count', -1) do
      delete deployment_status_url(@deployment_status)
    end

    assert_redirected_to deployment_statuses_url
  end
end
