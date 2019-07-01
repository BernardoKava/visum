require "application_system_test_case"

class EmploymentreferencesTest < ApplicationSystemTestCase
  setup do
    @employmentreference = employmentreferences(:one)
  end

  test "visiting the index" do
    visit employmentreferences_url
    assert_selector "h1", text: "Employmentreferences"
  end

  test "creating a Employmentreference" do
    visit employmentreferences_url
    click_on "New Employmentreference"

    fill_in "Employment", with: @employmentreference.employment_id
    fill_in "Person", with: @employmentreference.person_id
    check "Referee active" if @employmentreference.referee_active
    fill_in "Referee details", with: @employmentreference.referee_details
    fill_in "Referee email", with: @employmentreference.referee_email
    fill_in "Referee name", with: @employmentreference.referee_name
    fill_in "Referee telephone", with: @employmentreference.referee_telephone
    fill_in "User", with: @employmentreference.user_id
    click_on "Create Employmentreference"

    assert_text "Employmentreference was successfully created"
    click_on "Back"
  end

  test "updating a Employmentreference" do
    visit employmentreferences_url
    click_on "Edit", match: :first

    fill_in "Employment", with: @employmentreference.employment_id
    fill_in "Person", with: @employmentreference.person_id
    check "Referee active" if @employmentreference.referee_active
    fill_in "Referee details", with: @employmentreference.referee_details
    fill_in "Referee email", with: @employmentreference.referee_email
    fill_in "Referee name", with: @employmentreference.referee_name
    fill_in "Referee telephone", with: @employmentreference.referee_telephone
    fill_in "User", with: @employmentreference.user_id
    click_on "Update Employmentreference"

    assert_text "Employmentreference was successfully updated"
    click_on "Back"
  end

  test "destroying a Employmentreference" do
    visit employmentreferences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employmentreference was successfully destroyed"
  end
end
