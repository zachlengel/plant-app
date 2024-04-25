class ChangeDatetimeToDate < ActiveRecord::Migration[7.1]
  def change
    change_column(:schedules, :watering_start_date, :date)
  end
end
