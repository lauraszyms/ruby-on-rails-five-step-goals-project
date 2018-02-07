class RemoveUserIdFromGoalSteps < ActiveRecord::Migration[5.1]
  def change
    remove_column :goal_steps, :user_id, :integer
  end
end
