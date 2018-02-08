class MainGoalCategory < ActiveRecord::Base
  belongs_to :main_goal
  belongs_to :category
end
