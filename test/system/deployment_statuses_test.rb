require "application_system_test_case"

class DeploymentStatusesTest < ApplicationSystemTestCase
  setup do
    @deployment_status = deployment_statuses(:one)
  end

  test "visiting the index" do
    visit deployment_statuses_url
    assert_selector "h1", text: "Deployment Statuses"
  end

  test "creating a Deployment status" do
    visit deployment_statuses_url
    click_on "New Deployment Status"

    check "Active" if @deployment_status.active
    fill_in "Description", with: @deployment_status.description
    fill_in "Name", with: @deployment_status.name
    fill_in "Notes", with: @deployment_status.notes
    click_on "Create Deployment status"

    assert_text "Deployment status was successfully created"
    click_on "Back"
  end

  test "updating a Deployment status" do
    visit deployment_statuses_url
    click_on "Edit", match: :first

    check "Active" if @deployment_status.active
    fill_in "Description", with: @deployment_status.description
    fill_in "Name", with: @deployment_status.name
    fill_in "Notes", with: @deployment_status.notes
    click_on "Update Deployment status"

    assert_text "Deployment status was successfully updated"
    click_on "Back"
  end

  test "destroying a Deployment status" do
    visit deployment_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deployment status was successfully destroyed"
  end
end
