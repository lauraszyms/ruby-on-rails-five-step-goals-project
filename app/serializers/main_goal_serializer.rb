class MainGoalSerializer < ActiveModel::Serializer
  attributes :id, :summary, :status, :duedate
  belongs_to :user
  belongs_to :categories, serializer: MainGoalCategorySerializer
  has_many :goal_steps
end
