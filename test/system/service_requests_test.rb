require "application_system_test_case"

class ServiceRequestsTest < ApplicationSystemTestCase
  setup do
    @service_request = service_requests(:one)
  end

  test "visiting the index" do
    visit service_requests_url
    assert_selector "h1", text: "Service Requests"
  end

  test "creating a Service request" do
    visit service_requests_url
    click_on "New Service Request"

    fill_in "Case notes", with: @service_request.case_notes
    fill_in "Case resolution", with: @service_request.case_resolution
    fill_in "Problem description", with: @service_request.problem_description
    fill_in "Request status", with: @service_request.request_status_id
    fill_in "Request type", with: @service_request.request_type_id
    check "Resolved" if @service_request.resolved
    fill_in "Tech service", with: @service_request.tech_service_id
    fill_in "Ticket number", with: @service_request.ticket_number
    fill_in "User", with: @service_request.user_id
    click_on "Create Service request"

    assert_text "Service request was successfully created"
    click_on "Back"
  end

  test "updating a Service request" do
    visit service_requests_url
    click_on "Edit", match: :first

    fill_in "Case notes", with: @service_request.case_notes
    fill_in "Case resolution", with: @service_request.case_resolution
    fill_in "Problem description", with: @service_request.problem_description
    fill_in "Request status", with: @service_request.request_status_id
    fill_in "Request type", with: @service_request.request_type_id
    check "Resolved" if @service_request.resolved
    fill_in "Tech service", with: @service_request.tech_service_id
    fill_in "Ticket number", with: @service_request.ticket_number
    fill_in "User", with: @service_request.user_id
    click_on "Update Service request"

    assert_text "Service request was successfully updated"
    click_on "Back"
  end

  test "destroying a Service request" do
    visit service_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service request was successfully destroyed"
  end
end
