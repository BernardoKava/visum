require "application_system_test_case"

class EmploymentsTest < ApplicationSystemTestCase
  setup do
    @employment = employments(:one)
  end

  test "visiting the index" do
    visit employments_url
    assert_selector "h1", text: "Employments"
  end

  test "creating a Employment" do
    visit employments_url
    click_on "New Employment"

    check "Actve" if @employment.actve
    fill_in "Company", with: @employment.company
    fill_in "Company address", with: @employment.company_address
    fill_in "Company details", with: @employment.company_details
    fill_in "Company email", with: @employment.company_email
    fill_in "Company telephone", with: @employment.company_telephone
    fill_in "From", with: @employment.from
    fill_in "Person", with: @employment.person_id
    fill_in "Position", with: @employment.position
    fill_in "Role", with: @employment.role
    fill_in "Terminationreason", with: @employment.terminationreason
    fill_in "To", with: @employment.to
    fill_in "User", with: @employment.user_id
    click_on "Create Employment"

    assert_text "Employment was successfully created"
    click_on "Back"
  end

  test "updating a Employment" do
    visit employments_url
    click_on "Edit", match: :first

    check "Actve" if @employment.actve
    fill_in "Company", with: @employment.company
    fill_in "Company address", with: @employment.company_address
    fill_in "Company details", with: @employment.company_details
    fill_in "Company email", with: @employment.company_email
    fill_in "Company telephone", with: @employment.company_telephone
    fill_in "From", with: @employment.from
    fill_in "Person", with: @employment.person_id
    fill_in "Position", with: @employment.position
    fill_in "Role", with: @employment.role
    fill_in "Terminationreason", with: @employment.terminationreason
    fill_in "To", with: @employment.to
    fill_in "User", with: @employment.user_id
    click_on "Update Employment"

    assert_text "Employment was successfully updated"
    click_on "Back"
  end

  test "destroying a Employment" do
    visit employments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employment was successfully destroyed"
  end
end
