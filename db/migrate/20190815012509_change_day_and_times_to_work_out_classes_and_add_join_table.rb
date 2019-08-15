class ChangeDayAndTimesToWorkOutClassesAndAddJoinTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :day_and_times, :time, :string
    remove_column :day_and_times, :user_id, :integer
    add_column :day_and_times, :datetime, :datetime
  end
end
