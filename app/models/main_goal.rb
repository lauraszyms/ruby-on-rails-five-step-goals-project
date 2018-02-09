class MainGoal < ApplicationRecord
  has_many :goal_steps
  has_many :main_goal_categories
  has_many :categories, through: :main_goal_categories
  accepts_nested_attributes_for :goal_steps
  accepts_nested_attributes_for :categories
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :summary, length: { in: 14..150 }
  scope :completed, -> { where(status: "Completed") }
  scope :in_progress, -> { where(status: "In Progress") }
  scope :overdue, -> { where('created_at >= ?', Time.now - 31.days) }

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def goal_step_attributes=(goal_step_attributes)
    goal_step_attributes.values.each do |goal_step_attribute|
      goal_step = GoalStep.find_or_create_by(goal_step_attribute)
      self.goal_steps << goal_step
    end
  end

end
