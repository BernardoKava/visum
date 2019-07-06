require "application_system_test_case"

class NetworkSwitchesTest < ApplicationSystemTestCase
  setup do
    @network_switch = network_switches(:one)
  end

  test "visiting the index" do
    visit network_switches_url
    assert_selector "h1", text: "Network Switches"
  end

  test "creating a Network switch" do
    visit network_switches_url
    click_on "New Network Switch"

    check "Active" if @network_switch.active
    fill_in "Branding", with: @network_switch.branding
    fill_in "Code name", with: @network_switch.code_name
    fill_in "Ip address", with: @network_switch.ip_address
    fill_in "Notes", with: @network_switch.notes
    fill_in "Number of ports", with: @network_switch.number_of_ports
    fill_in "Password", with: @network_switch.password
    fill_in "S location", with: @network_switch.s_location
    fill_in "User", with: @network_switch.user_id
    fill_in "User name", with: @network_switch.user_name
    click_on "Create Network switch"

    assert_text "Network switch was successfully created"
    click_on "Back"
  end

  test "updating a Network switch" do
    visit network_switches_url
    click_on "Edit", match: :first

    check "Active" if @network_switch.active
    fill_in "Branding", with: @network_switch.branding
    fill_in "Code name", with: @network_switch.code_name
    fill_in "Ip address", with: @network_switch.ip_address
    fill_in "Notes", with: @network_switch.notes
    fill_in "Number of ports", with: @network_switch.number_of_ports
    fill_in "Password", with: @network_switch.password
    fill_in "S location", with: @network_switch.s_location
    fill_in "User", with: @network_switch.user_id
    fill_in "User name", with: @network_switch.user_name
    click_on "Update Network switch"

    assert_text "Network switch was successfully updated"
    click_on "Back"
  end

  test "destroying a Network switch" do
    visit network_switches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Network switch was successfully destroyed"
  end
end
