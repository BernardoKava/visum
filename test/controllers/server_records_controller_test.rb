require 'test_helper'

class ServerRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server_record = server_records(:one)
  end

  test "should get index" do
    get server_records_url
    assert_response :success
  end

  test "should get new" do
    get new_server_record_url
    assert_response :success
  end

  test "should create server_record" do
    assert_difference('ServerRecord.count') do
      post server_records_url, params: { server_record: { deployment_date: @server_record.deployment_date, deployment_status_id: @server_record.deployment_status_id, description: @server_record.description, domain_controller: @server_record.domain_controller, functional_level_id: @server_record.functional_level_id, name: @server_record.name, notes: @server_record.notes, operating_system_id: @server_record.operating_system_id, person_id: @server_record.person_id, user_id: @server_record.user_id, virtual: @server_record.virtual } }
    end

    assert_redirected_to server_record_url(ServerRecord.last)
  end

  test "should show server_record" do
    get server_record_url(@server_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_record_url(@server_record)
    assert_response :success
  end

  test "should update server_record" do
    patch server_record_url(@server_record), params: { server_record: { deployment_date: @server_record.deployment_date, deployment_status_id: @server_record.deployment_status_id, description: @server_record.description, domain_controller: @server_record.domain_controller, functional_level_id: @server_record.functional_level_id, name: @server_record.name, notes: @server_record.notes, operating_system_id: @server_record.operating_system_id, person_id: @server_record.person_id, user_id: @server_record.user_id, virtual: @server_record.virtual } }
    assert_redirected_to server_record_url(@server_record)
  end

  test "should destroy server_record" do
    assert_difference('ServerRecord.count', -1) do
      delete server_record_url(@server_record)
    end

    assert_redirected_to server_records_url
  end
end
