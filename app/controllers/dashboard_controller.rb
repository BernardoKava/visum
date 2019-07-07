class DashboardController < ApplicationController
  def index

  end

  def financial_charts
    @year = Date.today.year
    @inflows = Inflow.all
    @outflows = Outflow.all
    @incomes = Income.all
    @expenses = Expense.all
    @cashflows = Cashflow.all
  end


end
