require "application_system_test_case"

class SwitchPortsTest < ApplicationSystemTestCase
  setup do
    @switch_port = switch_ports(:one)
  end

  test "visiting the index" do
    visit switch_ports_url
    assert_selector "h1", text: "Switch Ports"
  end

  test "creating a Switch port" do
    visit switch_ports_url
    click_on "New Switch Port"

    fill_in "Client record", with: @switch_port.client_record_id
    fill_in "Network switch", with: @switch_port.network_switch_id
    fill_in "Notes", with: @switch_port.notes
    fill_in "Operating system", with: @switch_port.operating_system_id
    fill_in "Port number", with: @switch_port.port_number
    fill_in "Server record", with: @switch_port.server_record_id
    fill_in "User", with: @switch_port.user_id
    click_on "Create Switch port"

    assert_text "Switch port was successfully created"
    click_on "Back"
  end

  test "updating a Switch port" do
    visit switch_ports_url
    click_on "Edit", match: :first

    fill_in "Client record", with: @switch_port.client_record_id
    fill_in "Network switch", with: @switch_port.network_switch_id
    fill_in "Notes", with: @switch_port.notes
    fill_in "Operating system", with: @switch_port.operating_system_id
    fill_in "Port number", with: @switch_port.port_number
    fill_in "Server record", with: @switch_port.server_record_id
    fill_in "User", with: @switch_port.user_id
    click_on "Update Switch port"

    assert_text "Switch port was successfully updated"
    click_on "Back"
  end

  test "destroying a Switch port" do
    visit switch_ports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Switch port was successfully destroyed"
  end
end
