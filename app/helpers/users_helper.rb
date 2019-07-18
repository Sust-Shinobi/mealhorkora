module UsersHelper
    # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = user.email.downcase
    size = options[:size]
    gravatar_url = "https://api.adorable.io/avatars/#{size}/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def generate_cost_for(user)
    lunches = user.lunches.where(year: current_year,month: current_month)
    dinners = user.dinners.where(year: current_year,month: current_month)
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


  private

  def current_year
    year = Time.now.year
  end

  def current_month
    month = Date::MONTHNAMES[Time.now.month]
  end
end
