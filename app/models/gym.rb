class Gym < ApplicationRecord
  has_many :day_and_times
  has_many :users, through: :day_and_times
end
