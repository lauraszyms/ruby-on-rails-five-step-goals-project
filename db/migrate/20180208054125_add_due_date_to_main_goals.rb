class AddDueDateToMainGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :main_goals, :duedate, :datetime
  end
end
