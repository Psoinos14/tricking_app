class CreateDayAndTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :day_and_times do |t|
      t.string :days
      t.string :time
      t.integer :gym_id
      t.integer :user_id

      t.timestamps
    end
  end
end
