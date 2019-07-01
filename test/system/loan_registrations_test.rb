require "application_system_test_case"

class LoanRegistrationsTest < ApplicationSystemTestCase
  setup do
    @loan_registration = loan_registrations(:one)
  end

  test "visiting the index" do
    visit loan_registrations_url
    assert_selector "h1", text: "Loan Registrations"
  end

  test "creating a Loan registration" do
    visit loan_registrations_url
    click_on "New Loan Registration"

    check "Active" if @loan_registration.active
    fill_in "Amount", with: @loan_registration.amount
    fill_in "Drawdown date", with: @loan_registration.drawdown_date
    fill_in "Final payment date", with: @loan_registration.final_payment_date
    fill_in "Financialinstitution", with: @loan_registration.financialinstitution_id
    check "Internal loan" if @loan_registration.internal_loan
    fill_in "Loan reference", with: @loan_registration.loan_reference
    fill_in "Loan term", with: @loan_registration.loan_term
    fill_in "Loan type", with: @loan_registration.loan_type
    fill_in "Outstanding", with: @loan_registration.outstanding
    fill_in "Person", with: @loan_registration.person_id
    fill_in "Rationale", with: @loan_registration.rationale
    fill_in "User", with: @loan_registration.user_id
    click_on "Create Loan registration"

    assert_text "Loan registration was successfully created"
    click_on "Back"
  end

  test "updating a Loan registration" do
    visit loan_registrations_url
    click_on "Edit", match: :first

    check "Active" if @loan_registration.active
    fill_in "Amount", with: @loan_registration.amount
    fill_in "Drawdown date", with: @loan_registration.drawdown_date
    fill_in "Final payment date", with: @loan_registration.final_payment_date
    fill_in "Financialinstitution", with: @loan_registration.financialinstitution_id
    check "Internal loan" if @loan_registration.internal_loan
    fill_in "Loan reference", with: @loan_registration.loan_reference
    fill_in "Loan term", with: @loan_registration.loan_term
    fill_in "Loan type", with: @loan_registration.loan_type
    fill_in "Outstanding", with: @loan_registration.outstanding
    fill_in "Person", with: @loan_registration.person_id
    fill_in "Rationale", with: @loan_registration.rationale
    fill_in "User", with: @loan_registration.user_id
    click_on "Update Loan registration"

    assert_text "Loan registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Loan registration" do
    visit loan_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loan registration was successfully destroyed"
  end
end
