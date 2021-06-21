class Question < ApplicationRecord
  belongs_to :formulary
  has_one_attached :file

  validate :name_cannot_repeat

  def name_cannot_repeat
    if Question.joins(:formulary).where(name:name).where(formulary_id:formulary_id).present?
      errors.add(:name, "name aready exist in this formulary")
    end
  end

end
