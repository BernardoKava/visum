require "application_system_test_case"

class BankaccountsTest < ApplicationSystemTestCase
  setup do
    @bankaccount = bankaccounts(:one)
  end

  test "visiting the index" do
    visit bankaccounts_url
    assert_selector "h1", text: "Bankaccounts"
  end

  test "creating a Bankaccount" do
    visit bankaccounts_url
    click_on "New Bankaccount"

    fill_in "Account code", with: @bankaccount.account_code
    fill_in "Account name", with: @bankaccount.account_name
    fill_in "Account number", with: @bankaccount.account_number
    check "Active" if @bankaccount.active
    fill_in "Bic", with: @bankaccount.bic
    fill_in "Financialinstitution", with: @bankaccount.financialinstitution_id
    fill_in "Iban", with: @bankaccount.iban
    fill_in "Person", with: @bankaccount.person_id
    fill_in "Sort code", with: @bankaccount.sort_code
    click_on "Create Bankaccount"

    assert_text "Bankaccount was successfully created"
    click_on "Back"
  end

  test "updating a Bankaccount" do
    visit bankaccounts_url
    click_on "Edit", match: :first

    fill_in "Account code", with: @bankaccount.account_code
    fill_in "Account name", with: @bankaccount.account_name
    fill_in "Account number", with: @bankaccount.account_number
    check "Active" if @bankaccount.active
    fill_in "Bic", with: @bankaccount.bic
    fill_in "Financialinstitution", with: @bankaccount.financialinstitution_id
    fill_in "Iban", with: @bankaccount.iban
    fill_in "Person", with: @bankaccount.person_id
    fill_in "Sort code", with: @bankaccount.sort_code
    click_on "Update Bankaccount"

    assert_text "Bankaccount was successfully updated"
    click_on "Back"
  end

  test "destroying a Bankaccount" do
    visit bankaccounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bankaccount was successfully destroyed"
  end
end
