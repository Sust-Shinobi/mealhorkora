module LunchManagersHelper
    
    def had_meal_today?(user)
        time = Time.now
        meal = Lunch.where(user_id: user.id,year: time.strftime("%Y").to_i,
        month: time.strftime("%B"),
        day: time.strftime("%d").to_i)
        meal.any?
    end
end
