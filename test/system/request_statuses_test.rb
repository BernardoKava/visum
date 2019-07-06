require "application_system_test_case"

class RequestStatusesTest < ApplicationSystemTestCase
  setup do
    @request_status = request_statuses(:one)
  end

  test "visiting the index" do
    visit request_statuses_url
    assert_selector "h1", text: "Request Statuses"
  end

  test "creating a Request status" do
    visit request_statuses_url
    click_on "New Request Status"

    check "Active" if @request_status.active
    fill_in "Description", with: @request_status.description
    fill_in "Name", with: @request_status.name
    fill_in "Notes", with: @request_status.notes
    fill_in "User", with: @request_status.user_id
    click_on "Create Request status"

    assert_text "Request status was successfully created"
    click_on "Back"
  end

  test "updating a Request status" do
    visit request_statuses_url
    click_on "Edit", match: :first

    check "Active" if @request_status.active
    fill_in "Description", with: @request_status.description
    fill_in "Name", with: @request_status.name
    fill_in "Notes", with: @request_status.notes
    fill_in "User", with: @request_status.user_id
    click_on "Update Request status"

    assert_text "Request status was successfully updated"
    click_on "Back"
  end

  test "destroying a Request status" do
    visit request_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request status was successfully destroyed"
  end
end
