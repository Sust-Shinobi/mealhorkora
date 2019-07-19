module RevenuesHelper

    def get_expenses(year)
        Expense.where(year: year).sum(:cost)
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
