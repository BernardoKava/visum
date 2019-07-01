require "application_system_test_case"

class QualificationsTest < ApplicationSystemTestCase
  setup do
    @qualification = qualifications(:one)
  end

  test "visiting the index" do
    visit qualifications_url
    assert_selector "h1", text: "Qualifications"
  end

  test "creating a Qualification" do
    visit qualifications_url
    click_on "New Qualification"

    check "Active" if @qualification.active
    fill_in "From", with: @qualification.from
    fill_in "Grade", with: @qualification.grade
    fill_in "Name", with: @qualification.name
    fill_in "Person", with: @qualification.person_id
    fill_in "School", with: @qualification.school
    fill_in "To", with: @qualification.to
    fill_in "User", with: @qualification.user_id
    click_on "Create Qualification"

    assert_text "Qualification was successfully created"
    click_on "Back"
  end

  test "updating a Qualification" do
    visit qualifications_url
    click_on "Edit", match: :first

    check "Active" if @qualification.active
    fill_in "From", with: @qualification.from
    fill_in "Grade", with: @qualification.grade
    fill_in "Name", with: @qualification.name
    fill_in "Person", with: @qualification.person_id
    fill_in "School", with: @qualification.school
    fill_in "To", with: @qualification.to
    fill_in "User", with: @qualification.user_id
    click_on "Update Qualification"

    assert_text "Qualification was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualification" do
    visit qualifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualification was successfully destroyed"
  end
end
