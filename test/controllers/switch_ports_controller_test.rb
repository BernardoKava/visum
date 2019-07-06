require 'test_helper'

class SwitchPortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @switch_port = switch_ports(:one)
  end

  test "should get index" do
    get switch_ports_url
    assert_response :success
  end

  test "should get new" do
    get new_switch_port_url
    assert_response :success
  end

  test "should create switch_port" do
    assert_difference('SwitchPort.count') do
      post switch_ports_url, params: { switch_port: { client_record_id: @switch_port.client_record_id, network_switch_id: @switch_port.network_switch_id, notes: @switch_port.notes, operating_system_id: @switch_port.operating_system_id, port_number: @switch_port.port_number, server_record_id: @switch_port.server_record_id, user_id: @switch_port.user_id } }
    end

    assert_redirected_to switch_port_url(SwitchPort.last)
  end

  test "should show switch_port" do
    get switch_port_url(@switch_port)
    assert_response :success
  end

  test "should get edit" do
    get edit_switch_port_url(@switch_port)
    assert_response :success
  end

  test "should update switch_port" do
    patch switch_port_url(@switch_port), params: { switch_port: { client_record_id: @switch_port.client_record_id, network_switch_id: @switch_port.network_switch_id, notes: @switch_port.notes, operating_system_id: @switch_port.operating_system_id, port_number: @switch_port.port_number, server_record_id: @switch_port.server_record_id, user_id: @switch_port.user_id } }
    assert_redirected_to switch_port_url(@switch_port)
  end

  test "should destroy switch_port" do
    assert_difference('SwitchPort.count', -1) do
      delete switch_port_url(@switch_port)
    end

    assert_redirected_to switch_ports_url
  end
end
