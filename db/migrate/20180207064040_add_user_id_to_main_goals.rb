class AddUserIdToMainGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :main_goals, :user_id, :integer
  end
end
