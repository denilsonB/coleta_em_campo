class Formulary < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    has_many :questions
    
end
