class UserAccount < MealAccount
    def fetch_lunch_records(year,month,user_id)
        records = Lunch.where(year: year,month: month,user_id: user_id)
        return records
    end

    def fetch_dinner_records(year,month,user_id)
        records = Dinner.where(year: year,month: month,user_id: user_id)
        return records
    end
end