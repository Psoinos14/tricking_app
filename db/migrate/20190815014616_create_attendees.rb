class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.integer :day_and_time_id
      t.integer :user_id

      t.timestamps
    end
  end
end
