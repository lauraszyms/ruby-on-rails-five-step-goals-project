class CreateMainGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :main_goals do |t|
      t.string :title
      t.text :summary
      t.string :status, default: "In Progress"
      t.integer :user_id

      t.timestamps
    end
  end
end
