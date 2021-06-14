class VisitSerializer < ActiveModel::Serializer
  attributes :id, :date, :status, :checkin_at, :checkout_at
  has_one :user
end
