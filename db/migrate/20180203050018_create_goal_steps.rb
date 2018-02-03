class CreateGoalSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_steps do |t|
      t.string :name
      t.string :category
      t.text :summary
      t.string :status
      t.integer :point_value
      t.integer :user_id
      t.integer :main_goal_id

      t.timestamps
    end
  end
end
