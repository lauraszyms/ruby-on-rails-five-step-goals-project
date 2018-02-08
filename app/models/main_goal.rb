class MainGoal < ApplicationRecord
  has_many :goal_steps
  accepts_nested_attributes_for :goal_steps
  belongs_to :user, optional: true
end
