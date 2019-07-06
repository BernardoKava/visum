require "application_system_test_case"

class HergaApplicationsTest < ApplicationSystemTestCase
  setup do
    @herga_application = herga_applications(:one)
  end

  test "visiting the index" do
    visit herga_applications_url
    assert_selector "h1", text: "Herga Applications"
  end

  test "creating a Herga application" do
    visit herga_applications_url
    click_on "New Herga Application"

    fill_in "Decomissioned date", with: @herga_application.decomissioned_date
    fill_in "Deployment date", with: @herga_application.deployment_date
    fill_in "Deployment status", with: @herga_application.deployment_status_id
    fill_in "Description", with: @herga_application.description
    fill_in "Dev framework", with: @herga_application.dev_framework
    fill_in "Framework description", with: @herga_application.framework_description
    fill_in "Framework version", with: @herga_application.framework_version
    check "Inhouse build" if @herga_application.inhouse_build
    fill_in "Name", with: @herga_application.name
    fill_in "Notes", with: @herga_application.notes
    fill_in "Person", with: @herga_application.person_id
    fill_in "Server record", with: @herga_application.server_record_id
    check "Third party build" if @herga_application.third_party_build
    fill_in "User", with: @herga_application.user_id
    click_on "Create Herga application"

    assert_text "Herga application was successfully created"
    click_on "Back"
  end

  test "updating a Herga application" do
    visit herga_applications_url
    click_on "Edit", match: :first

    fill_in "Decomissioned date", with: @herga_application.decomissioned_date
    fill_in "Deployment date", with: @herga_application.deployment_date
    fill_in "Deployment status", with: @herga_application.deployment_status_id
    fill_in "Description", with: @herga_application.description
    fill_in "Dev framework", with: @herga_application.dev_framework
    fill_in "Framework description", with: @herga_application.framework_description
    fill_in "Framework version", with: @herga_application.framework_version
    check "Inhouse build" if @herga_application.inhouse_build
    fill_in "Name", with: @herga_application.name
    fill_in "Notes", with: @herga_application.notes
    fill_in "Person", with: @herga_application.person_id
    fill_in "Server record", with: @herga_application.server_record_id
    check "Third party build" if @herga_application.third_party_build
    fill_in "User", with: @herga_application.user_id
    click_on "Update Herga application"

    assert_text "Herga application was successfully updated"
    click_on "Back"
  end

  test "destroying a Herga application" do
    visit herga_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Herga application was successfully destroyed"
  end
end
