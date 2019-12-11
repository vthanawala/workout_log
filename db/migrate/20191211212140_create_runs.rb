class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.integer :workout_id
      t.integer :distance
      t.time :time
      t.string :comments

      t.timestamps
    end
  end
end
