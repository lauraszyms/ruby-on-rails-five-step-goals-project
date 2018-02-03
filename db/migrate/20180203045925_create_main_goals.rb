class CreateMainGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :main_goals do |t|
      t.string :name
      t.string :category
      t.text :summary
      t.string :status

      t.timestamps
    end
  end
end
