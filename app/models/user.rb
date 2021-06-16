class User < ApplicationRecord
    has_secure_password
    has_many :visits
    
    #validations

    #email must be unique and valid
    validates :email, email: true ,uniqueness: true , presence: true
    #cpf must be unique and valid
    validates :cpf, cpf: true, uniqueness: true , presence: true
    #password must be greater than 6 digits with numbers and letters
    PASSWORD_REQUIREMENTS = /\A
        (?=.{7,}) # At least 7 characters long
        (?=.*\d) # Contain at least one number
        (?=.*[a-z]) # Contain at least one lowercase letter
        (?=.*[A-Z]) # Contain at least one uppercase letter
    /x
    validates :password, format: PASSWORD_REQUIREMENTS
end
