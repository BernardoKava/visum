require 'test_helper'

class LedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ledger = ledgers(:one)
  end

  test "should get index" do
    get ledgers_url
    assert_response :success
  end

  test "should get new" do
    get new_ledger_url
    assert_response :success
  end

  test "should create ledger" do
    assert_difference('Ledger.count') do
      post ledgers_url, params: { ledger: { act_inflow_other: @ledger.act_inflow_other, annual_budget_bal: @ledger.annual_budget_bal, annual_budgeted_expenses: @ledger.annual_budgeted_expenses, annual_budgeted_income: @ledger.annual_budgeted_income, annual_cashflow_bal: @ledger.annual_cashflow_bal, annual_total_expenditure: @ledger.annual_total_expenditure, annual_total_income: @ledger.annual_total_income, ledger_date: @ledger.ledger_date, ledger_number: @ledger.ledger_number, month: @ledger.month, name: @ledger.name, note: @ledger.note, reference_number: @ledger.reference_number, user_id: @ledger.user_id, year: @ledger.year } }
    end

    assert_redirected_to ledger_url(Ledger.last)
  end

  test "should show ledger" do
    get ledger_url(@ledger)
    assert_response :success
  end

  test "should get edit" do
    get edit_ledger_url(@ledger)
    assert_response :success
  end

  test "should update ledger" do
    patch ledger_url(@ledger), params: { ledger: { act_inflow_other: @ledger.act_inflow_other, annual_budget_bal: @ledger.annual_budget_bal, annual_budgeted_expenses: @ledger.annual_budgeted_expenses, annual_budgeted_income: @ledger.annual_budgeted_income, annual_cashflow_bal: @ledger.annual_cashflow_bal, annual_total_expenditure: @ledger.annual_total_expenditure, annual_total_income: @ledger.annual_total_income, ledger_date: @ledger.ledger_date, ledger_number: @ledger.ledger_number, month: @ledger.month, name: @ledger.name, note: @ledger.note, reference_number: @ledger.reference_number, user_id: @ledger.user_id, year: @ledger.year } }
    assert_redirected_to ledger_url(@ledger)
  end

  test "should destroy ledger" do
    assert_difference('Ledger.count', -1) do
      delete ledger_url(@ledger)
    end

    assert_redirected_to ledgers_url
  end
end
