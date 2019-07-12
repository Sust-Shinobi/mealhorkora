class User < ApplicationRecord
    has_many  :lunches
    has_many  :dinners
    has_many :preferences
    before_save {self.email = email.downcase}

    validates :name, presence: true, length: {maximum: 50}
    validates :password, presence: true, length: {minimum: 6}, allow_nil: true
    validates :city, presence: true
    validates :address, presence: true
    validates :profession, presence: true, allow_blank: true
    validates :religion, presence: true
    validates :phone_no, presence: true

    VALID_EMAIL_REGREX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: {with:
                                                                           VALID_EMAIL_REGREX},
                                      uniqueness: {case_sensitive: false}
    has_secure_password
    has_many :preferrences
    validates :email, uniqueness:  {case_sensitive: false}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

    def User.digest(string)
	    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
	                                                  BCrypt::Engine.cost
	    BCrypt::Password.create(string, cost: cost)
  	end
    
end
