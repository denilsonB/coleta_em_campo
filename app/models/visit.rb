class Visit < ApplicationRecord
  belongs_to :user
  enum status: { pendente: 0, realizando: 1, realizada: 2}

  validate :date_cannot_be_in_the_past,
  :checkin_cannot_be_today_or_greater_than_checkout,
  :verify_user

  def date_cannot_be_in_the_past
    if date < created_at
      errors.add(:date,"invalid date, date cannot be in the past")
    end
  end
  
  def checkin_cannot_be_today_or_greater_than_checkout
    if checkin_at >= Date.today || checkin_at > checkout_at
      errors.add(:checkin_at,"invalid checkin, cannot be today or greater than checkout")
    end
  end
  def verify_user
    if !User.find_by(id:user_id).present?
      errors.add(:user, "Invalid User")
    end
  end
end
