class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :main_goals
end
