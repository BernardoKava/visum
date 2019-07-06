require 'test_helper'

class RequestStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_status = request_statuses(:one)
  end

  test "should get index" do
    get request_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_request_status_url
    assert_response :success
  end

  test "should create request_status" do
    assert_difference('RequestStatus.count') do
      post request_statuses_url, params: { request_status: { active: @request_status.active, description: @request_status.description, name: @request_status.name, notes: @request_status.notes, user_id: @request_status.user_id } }
    end

    assert_redirected_to request_status_url(RequestStatus.last)
  end

  test "should show request_status" do
    get request_status_url(@request_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_status_url(@request_status)
    assert_response :success
  end

  test "should update request_status" do
    patch request_status_url(@request_status), params: { request_status: { active: @request_status.active, description: @request_status.description, name: @request_status.name, notes: @request_status.notes, user_id: @request_status.user_id } }
    assert_redirected_to request_status_url(@request_status)
  end

  test "should destroy request_status" do
    assert_difference('RequestStatus.count', -1) do
      delete request_status_url(@request_status)
    end

    assert_redirected_to request_statuses_url
  end
end
