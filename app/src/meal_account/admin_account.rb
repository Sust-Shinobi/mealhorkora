class AdminAccount < MealAccount
    def fetch_meal_records(year,month)
        query = "
        SELECT *
        FROM lunches
        LEFT OUTER JOIN dinners ON 
        lunches.user_id = dinners.user_id
        and lunches.day = dinners.day
        and lunches.year = dinners.year
        and lunches.month = dinners.month
        WHERE lunches.month= \"#{month}\"
        and lunches.year = \"#{year}\"
        
        UNION
        
        SELECT *
        FROM lunches
        RIGHT OUTER JOIN dinners ON 
        lunches.user_id = dinners.user_id
        and lunches.day = dinners.day
        and lunches.year = dinners.year
        and lunches.month = dinners.month
        WHERE lunches.month= \"#{month}\"
        and lunches.year = \"#{year}\""
        records = ActiveRecord::Base.connection.execute(query)
        if records.present?
        return records
        end
    end
end