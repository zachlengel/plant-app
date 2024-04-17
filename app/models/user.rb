class User < ApplicationRecord
  has_many :schedules

  has_secure_password
end
