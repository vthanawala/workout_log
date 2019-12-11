class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
