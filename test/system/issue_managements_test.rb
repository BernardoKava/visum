require "application_system_test_case"

class IssueManagementsTest < ApplicationSystemTestCase
  setup do
    @issue_management = issue_managements(:one)
  end

  test "visiting the index" do
    visit issue_managements_url
    assert_selector "h1", text: "Issue Managements"
  end

  test "creating a Issue management" do
    visit issue_managements_url
    click_on "New Issue Management"

    fill_in "Completion actual date", with: @issue_management.completion_actual_date
    fill_in "Completion rate", with: @issue_management.completion_rate
    fill_in "Completion target date", with: @issue_management.completion_target_date
    fill_in "Description", with: @issue_management.description
    fill_in "Issue title", with: @issue_management.issue_title
    fill_in "Person", with: @issue_management.person_id
    fill_in "User", with: @issue_management.user_id
    click_on "Create Issue management"

    assert_text "Issue management was successfully created"
    click_on "Back"
  end

  test "updating a Issue management" do
    visit issue_managements_url
    click_on "Edit", match: :first

    fill_in "Completion actual date", with: @issue_management.completion_actual_date
    fill_in "Completion rate", with: @issue_management.completion_rate
    fill_in "Completion target date", with: @issue_management.completion_target_date
    fill_in "Description", with: @issue_management.description
    fill_in "Issue title", with: @issue_management.issue_title
    fill_in "Person", with: @issue_management.person_id
    fill_in "User", with: @issue_management.user_id
    click_on "Update Issue management"

    assert_text "Issue management was successfully updated"
    click_on "Back"
  end

  test "destroying a Issue management" do
    visit issue_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issue management was successfully destroyed"
  end
end
