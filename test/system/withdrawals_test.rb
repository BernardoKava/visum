require "application_system_test_case"

class WithdrawalsTest < ApplicationSystemTestCase
  setup do
    @withdrawal = withdrawals(:one)
  end

  test "visiting the index" do
    visit withdrawals_url
    assert_selector "h1", text: "Withdrawals"
  end

  test "creating a Withdrawal" do
    visit withdrawals_url
    click_on "New Withdrawal"

    fill_in "Amount", with: @withdrawal.amount
    fill_in "Day", with: @withdrawal.day
    fill_in "Details", with: @withdrawal.details
    fill_in "Financialinstitution", with: @withdrawal.financialinstitution_id
    fill_in "Institution", with: @withdrawal.institution
    fill_in "Month", with: @withdrawal.month
    fill_in "Origination", with: @withdrawal.origination
    fill_in "Owner", with: @withdrawal.owner
    fill_in "Person", with: @withdrawal.person_id
    fill_in "Plannedactivity", with: @withdrawal.plannedactivity_id
    fill_in "Rationale", with: @withdrawal.rationale
    fill_in "Saving", with: @withdrawal.saving_id
    fill_in "User", with: @withdrawal.user_id
    fill_in "Year", with: @withdrawal.year
    click_on "Create Withdrawal"

    assert_text "Withdrawal was successfully created"
    click_on "Back"
  end

  test "updating a Withdrawal" do
    visit withdrawals_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @withdrawal.amount
    fill_in "Day", with: @withdrawal.day
    fill_in "Details", with: @withdrawal.details
    fill_in "Financialinstitution", with: @withdrawal.financialinstitution_id
    fill_in "Institution", with: @withdrawal.institution
    fill_in "Month", with: @withdrawal.month
    fill_in "Origination", with: @withdrawal.origination
    fill_in "Owner", with: @withdrawal.owner
    fill_in "Person", with: @withdrawal.person_id
    fill_in "Plannedactivity", with: @withdrawal.plannedactivity_id
    fill_in "Rationale", with: @withdrawal.rationale
    fill_in "Saving", with: @withdrawal.saving_id
    fill_in "User", with: @withdrawal.user_id
    fill_in "Year", with: @withdrawal.year
    click_on "Update Withdrawal"

    assert_text "Withdrawal was successfully updated"
    click_on "Back"
  end

  test "destroying a Withdrawal" do
    visit withdrawals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Withdrawal was successfully destroyed"
  end
end
