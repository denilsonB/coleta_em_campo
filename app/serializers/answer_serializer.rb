class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :answered_at
  has_one :formulary
  has_one :question
  has_one :visit
end
