module LunchManagersHelper
    
    def had_lunch_today?(user)
        time = Time.now
        meal = Lunch.where(user_id: user.id,year: time.strftime("%Y").to_i,
        month: time.strftime("%B"),
        day: time.strftime("%d").to_i)
        meal.any?
    end

    def generate_lunch_cost(lunchrecords)
        cost = 0
        lunchrecords.each do |lunch|
            cost += lunch.lunch_meal.cost
        end
        return cost
    end
end
