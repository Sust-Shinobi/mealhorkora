module DinnerManagersHelper
    def had_dinner_today?(user)
        time = Time.now
        meal = Dinner.where(user_id: user.id,year: time.strftime("%Y").to_i,
        month: time.strftime("%B"),
        day: time.strftime("%d").to_i)
        meal.any?
    end

    def generate_dinner_cost(dinnerrecords)
        cost = 0
        dinnerrecords.each do |dinner|
            cost += dinner.dinner_meal.cost
        end
        return cost
    end
end
