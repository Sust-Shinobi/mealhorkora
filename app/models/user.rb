class User < ApplicationRecord
    has_many  :lunches
    has_many  :dinners
    has_many :preferences
    validates :email, uniqueness:  {case_sensitive: false}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

    def User.digest(string)
	    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
	                                                  BCrypt::Engine.cost
	    BCrypt::Password.create(string, cost: cost)
  	end
    
end
