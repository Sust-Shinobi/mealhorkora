class AdminAccount < MealAccount
    def fetch_lunch_records(year,month,day,user_id)        
        unless day.blank?
            records = Lunch.where(year: year, month: month, day: day)
        else
            records = Lunch.where(year: year, month: month)
        end
        return records
    end
    def fetch_dinner_records(year,month,day,user_id)
        unless day.blank?
            records = Dinner.where(year: year, month: month, day: day)
        else
            records = Dinner.where(year: year, month: month)
        end
        return records
    end
end