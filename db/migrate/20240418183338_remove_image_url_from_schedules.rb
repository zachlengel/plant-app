class RemoveImageUrlFromSchedules < ActiveRecord::Migration[7.1]
  def change
    remove_column :schedules, :image_url
    add_column :plants, :image_url, :string
  end
end
