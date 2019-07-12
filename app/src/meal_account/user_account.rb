class UserAccount < MealAccount
    def fetch_meal_records(year,month)
        records = User.where(year: year,month: month)
        return records
    end
end