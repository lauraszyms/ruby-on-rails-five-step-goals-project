class GoalStep < ApplicationRecord
  belongs_to :main_goal
  validates :title, presence: true
  validates :summary, length: { maximum: 150 }
end
