module RevenuesHelper

    def get_expenses_quarter(year,quarter)
        cost = 0
        (quarter*3-2..quarter*3).each do |i|
            cost += Expense.where(year: year, month: Date::MONTHNAMES[i]).sum(:cost)
        end
        cost
    end

    def get_expenses_year(year)
        cost = Expense.where(year: year).sum(:cost)
        cost
    end

    def get_sales_quarter(year,quarter)
        cost = 0
        (quarter*3-2..quarter*3).each do |i|
            cost += cost_for_lunch(Lunch.where(year: year, month: Date::MONTHNAMES[i]))
            cost += cost_for_dinner(Dinner.where(year: year, month: Date::MONTHNAMES[i]))
        end
        cost
    end

    def get_sales_year(year)
        lunches = Lunch.where(year: year)
        dinners = Dinner.where(year: year)
        cost = cost_for_lunch(lunches) + cost_for_dinner(dinners)
        cost    
    end

    def rev_from_meal(year)
        lunches = Lunch.where(year: current_year)
        dinners = Dinner.where(year: current_year)
        cost = cost_for_lunch(lunches) + cost_for_dinner(dinners)
    end
    
    def cost_for_lunch(meals)
        cost = 0
        meals.each do |meal|
          cost += meal.lunch_meal.cost
        end
        cost
      end
    
      def cost_for_dinner(meals)
        cost = 0
        meals.each do |meal|
          cost += meal.dinner_meal.cost
        end
        cost
      end
end
