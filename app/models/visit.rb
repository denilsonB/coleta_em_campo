class Visit < ApplicationRecord
  belongs_to :user
  enum status: { pendente: 0, realizando: 1, realizada: 2}

end
