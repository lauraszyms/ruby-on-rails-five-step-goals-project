class Category < ApplicationRecord
  has_many :main_goal_categories
  has_many :main_goals, through: :main_goal_categories
  validates :name, presence: true
end
