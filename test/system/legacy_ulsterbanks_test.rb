require "application_system_test_case"

class LegacyUlsterbanksTest < ApplicationSystemTestCase
  setup do
    @legacy_ulsterbank = legacy_ulsterbanks(:one)
  end

  test "visiting the index" do
    visit legacy_ulsterbanks_url
    assert_selector "h1", text: "Legacy Ulsterbanks"
  end

  test "creating a Legacy ulsterbank" do
    visit legacy_ulsterbanks_url
    click_on "New Legacy Ulsterbank"

    fill_in "Account name", with: @legacy_ulsterbank.account_name
    fill_in "Account number", with: @legacy_ulsterbank.account_number
    fill_in "Description", with: @legacy_ulsterbank.description
    fill_in "Trans date", with: @legacy_ulsterbank.trans_date
    fill_in "Trans type", with: @legacy_ulsterbank.trans_type
    fill_in "Trans value", with: @legacy_ulsterbank.trans_value
    click_on "Create Legacy ulsterbank"

    assert_text "Legacy ulsterbank was successfully created"
    click_on "Back"
  end

  test "updating a Legacy ulsterbank" do
    visit legacy_ulsterbanks_url
    click_on "Edit", match: :first

    fill_in "Account name", with: @legacy_ulsterbank.account_name
    fill_in "Account number", with: @legacy_ulsterbank.account_number
    fill_in "Description", with: @legacy_ulsterbank.description
    fill_in "Trans date", with: @legacy_ulsterbank.trans_date
    fill_in "Trans type", with: @legacy_ulsterbank.trans_type
    fill_in "Trans value", with: @legacy_ulsterbank.trans_value
    click_on "Update Legacy ulsterbank"

    assert_text "Legacy ulsterbank was successfully updated"
    click_on "Back"
  end

  test "destroying a Legacy ulsterbank" do
    visit legacy_ulsterbanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legacy ulsterbank was successfully destroyed"
  end
end
