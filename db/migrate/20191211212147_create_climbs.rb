class CreateClimbs < ActiveRecord::Migration[5.1]
  def change
    create_table :climbs do |t|
      t.integer :workout_id
      t.string :routes
      t.string :comments

      t.timestamps
    end
  end
end
