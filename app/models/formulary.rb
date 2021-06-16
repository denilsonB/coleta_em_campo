class Formulary < ApplicationRecord
    validates :name, uniqueness: true, presence: true

end
