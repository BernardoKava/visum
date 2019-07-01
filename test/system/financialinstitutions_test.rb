require "application_system_test_case"

class FinancialinstitutionsTest < ApplicationSystemTestCase
  setup do
    @financialinstitution = financialinstitutions(:one)
  end

  test "visiting the index" do
    visit financialinstitutions_url
    assert_selector "h1", text: "Financialinstitutions"
  end

  test "creating a Financialinstitution" do
    visit financialinstitutions_url
    click_on "New Financialinstitution"

    fill_in "Address", with: @financialinstitution.address
    fill_in "Description", with: @financialinstitution.description
    fill_in "Email", with: @financialinstitution.email
    fill_in "Institution code", with: @financialinstitution.institution_code
    fill_in "Latitude", with: @financialinstitution.latitude
    fill_in "Longitude", with: @financialinstitution.longitude
    fill_in "Name", with: @financialinstitution.name
    fill_in "Telephone", with: @financialinstitution.telephone
    click_on "Create Financialinstitution"

    assert_text "Financialinstitution was successfully created"
    click_on "Back"
  end

  test "updating a Financialinstitution" do
    visit financialinstitutions_url
    click_on "Edit", match: :first

    fill_in "Address", with: @financialinstitution.address
    fill_in "Description", with: @financialinstitution.description
    fill_in "Email", with: @financialinstitution.email
    fill_in "Institution code", with: @financialinstitution.institution_code
    fill_in "Latitude", with: @financialinstitution.latitude
    fill_in "Longitude", with: @financialinstitution.longitude
    fill_in "Name", with: @financialinstitution.name
    fill_in "Telephone", with: @financialinstitution.telephone
    click_on "Update Financialinstitution"

    assert_text "Financialinstitution was successfully updated"
    click_on "Back"
  end

  test "destroying a Financialinstitution" do
    visit financialinstitutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financialinstitution was successfully destroyed"
  end
end
