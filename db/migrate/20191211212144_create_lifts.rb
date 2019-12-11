class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|
      t.integer :workout_id
      t.string :body_part
      t.string :comments

      t.timestamps
    end
  end
end
