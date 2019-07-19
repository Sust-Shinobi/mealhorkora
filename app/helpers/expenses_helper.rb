module ExpensesHelper

  def get_total_expense(expenserecords)
    cost = 0
    expenserecords.each do |expense|
      cost += expense.cost
    end
    return cost
  end

end
