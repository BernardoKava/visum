require "application_system_test_case"

class TechServicesTest < ApplicationSystemTestCase
  setup do
    @tech_service = tech_services(:one)
  end

  test "visiting the index" do
    visit tech_services_url
    assert_selector "h1", text: "Tech Services"
  end

  test "creating a Tech service" do
    visit tech_services_url
    click_on "New Tech Service"

    check "Active" if @tech_service.active
    fill_in "Description", with: @tech_service.description
    fill_in "Name", with: @tech_service.name
    fill_in "Notes", with: @tech_service.notes
    fill_in "User", with: @tech_service.user_id
    click_on "Create Tech service"

    assert_text "Tech service was successfully created"
    click_on "Back"
  end

  test "updating a Tech service" do
    visit tech_services_url
    click_on "Edit", match: :first

    check "Active" if @tech_service.active
    fill_in "Description", with: @tech_service.description
    fill_in "Name", with: @tech_service.name
    fill_in "Notes", with: @tech_service.notes
    fill_in "User", with: @tech_service.user_id
    click_on "Update Tech service"

    assert_text "Tech service was successfully updated"
    click_on "Back"
  end

  test "destroying a Tech service" do
    visit tech_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tech service was successfully destroyed"
  end
end
