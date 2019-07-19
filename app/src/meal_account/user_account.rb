class UserAccount < MealAccount
    def fetch_lunch_records(year,month,day,user_id)
        unless day.blank?
            records = Lunch.where(year: year,month: month,day: day,user_id: user_id)
            else
            records = Lunch.where(year: year,month: month,user_id: user_id)
        end
        return records
    end

    def fetch_dinner_records(year,month,day,user_id)
        unless day.blank?
            records = Dinner.where(year: year,month: month,day: day,user_id: user_id)
            else
            records = Dinner.where(year: year,month: month,user_id: user_id)
        end
            return records
    end
end