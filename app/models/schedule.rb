class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  def plant_name
    plant_name = Plant.find_by(id: plant_id)
  end
end
