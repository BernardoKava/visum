require "application_system_test_case"

class CorrectiveActionsTest < ApplicationSystemTestCase
  setup do
    @corrective_action = corrective_actions(:one)
  end

  test "visiting the index" do
    visit corrective_actions_url
    assert_selector "h1", text: "Corrective Actions"
  end

  test "creating a Corrective action" do
    visit corrective_actions_url
    click_on "New Corrective Action"

    check "Active" if @corrective_action.active
    fill_in "Actual completion date", with: @corrective_action.actual_completion_date
    fill_in "Description", with: @corrective_action.description
    fill_in "Issue management", with: @corrective_action.issue_management_id
    fill_in "Person", with: @corrective_action.person_id
    fill_in "Target completion date", with: @corrective_action.target_completion_date
    fill_in "Title", with: @corrective_action.title
    fill_in "User", with: @corrective_action.user_id
    click_on "Create Corrective action"

    assert_text "Corrective action was successfully created"
    click_on "Back"
  end

  test "updating a Corrective action" do
    visit corrective_actions_url
    click_on "Edit", match: :first

    check "Active" if @corrective_action.active
    fill_in "Actual completion date", with: @corrective_action.actual_completion_date
    fill_in "Description", with: @corrective_action.description
    fill_in "Issue management", with: @corrective_action.issue_management_id
    fill_in "Person", with: @corrective_action.person_id
    fill_in "Target completion date", with: @corrective_action.target_completion_date
    fill_in "Title", with: @corrective_action.title
    fill_in "User", with: @corrective_action.user_id
    click_on "Update Corrective action"

    assert_text "Corrective action was successfully updated"
    click_on "Back"
  end

  test "destroying a Corrective action" do
    visit corrective_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corrective action was successfully destroyed"
  end
end
