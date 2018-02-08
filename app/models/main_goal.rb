class MainGoal < ApplicationRecord
  has_many :goal_steps
  has_many :main_goal_categories
  has_many :categories, through: :main_goal_categories
  accepts_nested_attributes_for :goal_steps
  accepts_nested_attributes_for :categories
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :summary, length: { maximum: 200 }
  scope :status, -> { where(status: "Completed") }


end
