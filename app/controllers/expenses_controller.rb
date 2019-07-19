class ExpensesController < ApplicationController

  def new
    @expense = Expense.new
  end

  def create
    item = params[:expenses][:item]
    quantity = params[:expenses][:quantity]
    cost = params[:expenses][:cost]
    year = params[:expenses]["date(1i)"].to_i
    month = Date::MONTHNAMES[params[:expenses]["date(2i)"].to_i]
    day = params[:expenses]["date(3i)"].to_i
    Expense.create!(item: item, quantity: quantity, cost: cost, year: year, month: month, day: day)
    redirect_to dashboard_path
  end

  def show
    year = params[:expense]["expired(1i)"].to_i
    month = Date::MONTHNAMES[params[:expense]["expired(2i)"].to_i]
    day = params[:expense]["expired(3i)"]
    @expenserecords = fetch_expenses(year,month,day)
    render 'show'
  end

  def show_blank
    render 'show'
  end

  def fetch_expenses(year,month,day)
    if day.blank?
      records = Expense.where(year: year, month: month)
    else
      records = Expense.where(year: year, month: month, day: day)
    end
    return records
  end

end
