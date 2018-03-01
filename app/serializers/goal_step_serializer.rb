class GoalStepSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :status
  belongs_to :main_goal
end
