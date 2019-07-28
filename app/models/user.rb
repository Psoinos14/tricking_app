class User < ApplicationRecord
  has_many :day_and_times
  has_many :gyms, through: :day_and_times


end
