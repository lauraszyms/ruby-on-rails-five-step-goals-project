class MainGoal < ApplicationRecord
  has_many :goal_steps, dependent: :delete_all
  has_many :main_goal_categories, dependent: :delete_all
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
      attribute = category_attributes.values[0]
      category = Category.find_or_create_by(name: attribute)
      self.categories << category
  end

end
