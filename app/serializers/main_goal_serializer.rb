class MainGoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :status, :duedate
  belongs_to :user
  has_many :categories
  has_many :goal_steps
end
