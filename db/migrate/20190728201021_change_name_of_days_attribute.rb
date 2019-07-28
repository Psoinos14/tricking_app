class ChangeNameOfDaysAttribute < ActiveRecord::Migration[6.0]
  def change
    rename_column :day_and_times, :days, :day
  end
end
