class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :name, :type
  has_one :formulary
end
