require "application_system_test_case"

class ServerRecordsTest < ApplicationSystemTestCase
  setup do
    @server_record = server_records(:one)
  end

  test "visiting the index" do
    visit server_records_url
    assert_selector "h1", text: "Server Records"
  end

  test "creating a Server record" do
    visit server_records_url
    click_on "New Server Record"

    fill_in "Deployment date", with: @server_record.deployment_date
    fill_in "Deployment status", with: @server_record.deployment_status_id
    fill_in "Description", with: @server_record.description
    check "Domain controller" if @server_record.domain_controller
    fill_in "Functional level", with: @server_record.functional_level_id
    fill_in "Name", with: @server_record.name
    fill_in "Notes", with: @server_record.notes
    fill_in "Operating system", with: @server_record.operating_system_id
    fill_in "Person", with: @server_record.person_id
    fill_in "User", with: @server_record.user_id
    check "Virtual" if @server_record.virtual
    click_on "Create Server record"

    assert_text "Server record was successfully created"
    click_on "Back"
  end

  test "updating a Server record" do
    visit server_records_url
    click_on "Edit", match: :first

    fill_in "Deployment date", with: @server_record.deployment_date
    fill_in "Deployment status", with: @server_record.deployment_status_id
    fill_in "Description", with: @server_record.description
    check "Domain controller" if @server_record.domain_controller
    fill_in "Functional level", with: @server_record.functional_level_id
    fill_in "Name", with: @server_record.name
    fill_in "Notes", with: @server_record.notes
    fill_in "Operating system", with: @server_record.operating_system_id
    fill_in "Person", with: @server_record.person_id
    fill_in "User", with: @server_record.user_id
    check "Virtual" if @server_record.virtual
    click_on "Update Server record"

    assert_text "Server record was successfully updated"
    click_on "Back"
  end

  test "destroying a Server record" do
    visit server_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Server record was successfully destroyed"
  end
end
