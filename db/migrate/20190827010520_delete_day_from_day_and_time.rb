class DeleteDayFromDayAndTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :day_and_times, :day, :string
  end
end
