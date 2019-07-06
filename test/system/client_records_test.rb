require "application_system_test_case"

class ClientRecordsTest < ApplicationSystemTestCase
  setup do
    @client_record = client_records(:one)
  end

  test "visiting the index" do
    visit client_records_url
    assert_selector "h1", text: "Client Records"
  end

  test "creating a Client record" do
    visit client_records_url
    click_on "New Client Record"

    fill_in "Deployment date", with: @client_record.deployment_date
    fill_in "Description", with: @client_record.description
    fill_in "Name", with: @client_record.name
    fill_in "Notes", with: @client_record.notes
    fill_in "Operating system", with: @client_record.operating_system_id
    fill_in "Person", with: @client_record.person_id
    fill_in "User", with: @client_record.user_id
    check "Virtual" if @client_record.virtual
    click_on "Create Client record"

    assert_text "Client record was successfully created"
    click_on "Back"
  end

  test "updating a Client record" do
    visit client_records_url
    click_on "Edit", match: :first

    fill_in "Deployment date", with: @client_record.deployment_date
    fill_in "Description", with: @client_record.description
    fill_in "Name", with: @client_record.name
    fill_in "Notes", with: @client_record.notes
    fill_in "Operating system", with: @client_record.operating_system_id
    fill_in "Person", with: @client_record.person_id
    fill_in "User", with: @client_record.user_id
    check "Virtual" if @client_record.virtual
    click_on "Update Client record"

    assert_text "Client record was successfully updated"
    click_on "Back"
  end

  test "destroying a Client record" do
    visit client_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client record was successfully destroyed"
  end
end
