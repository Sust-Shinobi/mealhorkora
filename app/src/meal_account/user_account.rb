class UserAccount < MealAccount
    def fetch_lunch_records(year,month)
        records = Lunch.where(year: year,month: month)
        return records
    end
end