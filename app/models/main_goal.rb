class MainGoal < ApplicationRecord
  has_many :goal_steps
  belongs_to :user, optional: true
end
