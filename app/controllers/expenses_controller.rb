class ExpensesController < ApplicationController

  def new
    @expense = Expense.new
  end

  def create
    item = params[:expenses][:item]
    cost = params[:expenses][:cost]
    year = params[:expenses]["date(1i)"].to_i
    month = Date::MONTHNAMES[params[:expenses]["date(2i)"].to_i]
    day = params[:expenses]["date(3i)"].to_i
    Expense.create!(item: item, cost: cost, year: year, month: month, day: day)
    redirect_to dashboard_path
  end

  def show
    @expenses = Expense.all
  end

end
