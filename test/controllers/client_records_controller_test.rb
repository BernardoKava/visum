require 'test_helper'

class ClientRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_record = client_records(:one)
  end

  test "should get index" do
    get client_records_url
    assert_response :success
  end

  test "should get new" do
    get new_client_record_url
    assert_response :success
  end

  test "should create client_record" do
    assert_difference('ClientRecord.count') do
      post client_records_url, params: { client_record: { deployment_date: @client_record.deployment_date, description: @client_record.description, name: @client_record.name, notes: @client_record.notes, operating_system_id: @client_record.operating_system_id, person_id: @client_record.person_id, user_id: @client_record.user_id, virtual: @client_record.virtual } }
    end

    assert_redirected_to client_record_url(ClientRecord.last)
  end

  test "should show client_record" do
    get client_record_url(@client_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_record_url(@client_record)
    assert_response :success
  end

  test "should update client_record" do
    patch client_record_url(@client_record), params: { client_record: { deployment_date: @client_record.deployment_date, description: @client_record.description, name: @client_record.name, notes: @client_record.notes, operating_system_id: @client_record.operating_system_id, person_id: @client_record.person_id, user_id: @client_record.user_id, virtual: @client_record.virtual } }
    assert_redirected_to client_record_url(@client_record)
  end

  test "should destroy client_record" do
    assert_difference('ClientRecord.count', -1) do
      delete client_record_url(@client_record)
    end

    assert_redirected_to client_records_url
  end
end
