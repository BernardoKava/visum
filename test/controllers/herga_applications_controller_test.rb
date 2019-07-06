require 'test_helper'

class HergaApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @herga_application = herga_applications(:one)
  end

  test "should get index" do
    get herga_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_herga_application_url
    assert_response :success
  end

  test "should create herga_application" do
    assert_difference('HergaApplication.count') do
      post herga_applications_url, params: { herga_application: { decomissioned_date: @herga_application.decomissioned_date, deployment_date: @herga_application.deployment_date, deployment_status_id: @herga_application.deployment_status_id, description: @herga_application.description, dev_framework: @herga_application.dev_framework, framework_description: @herga_application.framework_description, framework_version: @herga_application.framework_version, inhouse_build: @herga_application.inhouse_build, name: @herga_application.name, notes: @herga_application.notes, person_id: @herga_application.person_id, server_record_id: @herga_application.server_record_id, third_party_build: @herga_application.third_party_build, user_id: @herga_application.user_id } }
    end

    assert_redirected_to herga_application_url(HergaApplication.last)
  end

  test "should show herga_application" do
    get herga_application_url(@herga_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_herga_application_url(@herga_application)
    assert_response :success
  end

  test "should update herga_application" do
    patch herga_application_url(@herga_application), params: { herga_application: { decomissioned_date: @herga_application.decomissioned_date, deployment_date: @herga_application.deployment_date, deployment_status_id: @herga_application.deployment_status_id, description: @herga_application.description, dev_framework: @herga_application.dev_framework, framework_description: @herga_application.framework_description, framework_version: @herga_application.framework_version, inhouse_build: @herga_application.inhouse_build, name: @herga_application.name, notes: @herga_application.notes, person_id: @herga_application.person_id, server_record_id: @herga_application.server_record_id, third_party_build: @herga_application.third_party_build, user_id: @herga_application.user_id } }
    assert_redirected_to herga_application_url(@herga_application)
  end

  test "should destroy herga_application" do
    assert_difference('HergaApplication.count', -1) do
      delete herga_application_url(@herga_application)
    end

    assert_redirected_to herga_applications_url
  end
end
