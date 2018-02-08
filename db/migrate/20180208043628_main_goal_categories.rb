class MainGoalCategories < ActiveRecord::Migration[5.1]
    def change
      create_table :main_goal_categories do |t|
        t.belongs_to :main_goal, index: true, foreign_key: true
        t.belongs_to :category, index: true, foreign_key: true
        t.timestamps null: false
      end
  end
end
