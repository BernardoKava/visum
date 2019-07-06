require 'test_helper'

class NetworkSwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @network_switch = network_switches(:one)
  end

  test "should get index" do
    get network_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_network_switch_url
    assert_response :success
  end

  test "should create network_switch" do
    assert_difference('NetworkSwitch.count') do
      post network_switches_url, params: { network_switch: { active: @network_switch.active, branding: @network_switch.branding, code_name: @network_switch.code_name, ip_address: @network_switch.ip_address, notes: @network_switch.notes, number_of_ports: @network_switch.number_of_ports, password: @network_switch.password, s_location: @network_switch.s_location, user_id: @network_switch.user_id, user_name: @network_switch.user_name } }
    end

    assert_redirected_to network_switch_url(NetworkSwitch.last)
  end

  test "should show network_switch" do
    get network_switch_url(@network_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_network_switch_url(@network_switch)
    assert_response :success
  end

  test "should update network_switch" do
    patch network_switch_url(@network_switch), params: { network_switch: { active: @network_switch.active, branding: @network_switch.branding, code_name: @network_switch.code_name, ip_address: @network_switch.ip_address, notes: @network_switch.notes, number_of_ports: @network_switch.number_of_ports, password: @network_switch.password, s_location: @network_switch.s_location, user_id: @network_switch.user_id, user_name: @network_switch.user_name } }
    assert_redirected_to network_switch_url(@network_switch)
  end

  test "should destroy network_switch" do
    assert_difference('NetworkSwitch.count', -1) do
      delete network_switch_url(@network_switch)
    end

    assert_redirected_to network_switches_url
  end
end
