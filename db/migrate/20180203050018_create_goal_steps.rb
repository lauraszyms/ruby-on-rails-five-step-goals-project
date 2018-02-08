class CreateGoalSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_steps do |t|
      t.string :title
      t.text :summary
      t.string :status, default: "In Progress"
      t.integer :main_goal_id

      t.timestamps
    end
  end
end
