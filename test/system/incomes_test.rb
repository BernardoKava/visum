require "application_system_test_case"

class IncomesTest < ApplicationSystemTestCase
  setup do
    @income = incomes(:one)
  end

  test "visiting the index" do
    visit incomes_url
    assert_selector "h1", text: "Incomes"
  end

  test "creating a Income" do
    visit incomes_url
    click_on "New Income"

    fill_in "Amount", with: @income.amount
    fill_in "Budget", with: @income.budget_id
    fill_in "Details", with: @income.details
    fill_in "Income type", with: @income.income_type
    fill_in "Inflowtype", with: @income.inflowtype_id
    fill_in "Month", with: @income.month
    fill_in "Owner", with: @income.owner
    fill_in "Person", with: @income.person_id
    fill_in "User", with: @income.user_id
    fill_in "Year", with: @income.year
    click_on "Create Income"

    assert_text "Income was successfully created"
    click_on "Back"
  end

  test "updating a Income" do
    visit incomes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @income.amount
    fill_in "Budget", with: @income.budget_id
    fill_in "Details", with: @income.details
    fill_in "Income type", with: @income.income_type
    fill_in "Inflowtype", with: @income.inflowtype_id
    fill_in "Month", with: @income.month
    fill_in "Owner", with: @income.owner
    fill_in "Person", with: @income.person_id
    fill_in "User", with: @income.user_id
    fill_in "Year", with: @income.year
    click_on "Update Income"

    assert_text "Income was successfully updated"
    click_on "Back"
  end

  test "destroying a Income" do
    visit incomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Income was successfully destroyed"
  end
end
