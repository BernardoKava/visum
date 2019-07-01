require "application_system_test_case"

class LodgementsTest < ApplicationSystemTestCase
  setup do
    @lodgement = lodgements(:one)
  end

  test "visiting the index" do
    visit lodgements_url
    assert_selector "h1", text: "Lodgements"
  end

  test "creating a Lodgement" do
    visit lodgements_url
    click_on "New Lodgement"

    fill_in "Amount", with: @lodgement.amount
    fill_in "Day", with: @lodgement.day
    fill_in "Details", with: @lodgement.details
    fill_in "Financialinstitution", with: @lodgement.financialinstitution_id
    fill_in "Institution", with: @lodgement.institution
    fill_in "Month", with: @lodgement.month
    fill_in "Origination", with: @lodgement.origination
    fill_in "Owner", with: @lodgement.owner
    fill_in "Person", with: @lodgement.person_id
    fill_in "Plannedactivity", with: @lodgement.plannedactivity_id
    fill_in "Rationale", with: @lodgement.rationale
    fill_in "Saving", with: @lodgement.saving_id
    fill_in "User", with: @lodgement.user_id
    fill_in "Year", with: @lodgement.year
    click_on "Create Lodgement"

    assert_text "Lodgement was successfully created"
    click_on "Back"
  end

  test "updating a Lodgement" do
    visit lodgements_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @lodgement.amount
    fill_in "Day", with: @lodgement.day
    fill_in "Details", with: @lodgement.details
    fill_in "Financialinstitution", with: @lodgement.financialinstitution_id
    fill_in "Institution", with: @lodgement.institution
    fill_in "Month", with: @lodgement.month
    fill_in "Origination", with: @lodgement.origination
    fill_in "Owner", with: @lodgement.owner
    fill_in "Person", with: @lodgement.person_id
    fill_in "Plannedactivity", with: @lodgement.plannedactivity_id
    fill_in "Rationale", with: @lodgement.rationale
    fill_in "Saving", with: @lodgement.saving_id
    fill_in "User", with: @lodgement.user_id
    fill_in "Year", with: @lodgement.year
    click_on "Update Lodgement"

    assert_text "Lodgement was successfully updated"
    click_on "Back"
  end

  test "destroying a Lodgement" do
    visit lodgements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lodgement was successfully destroyed"
  end
end
