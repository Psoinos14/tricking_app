class DayAndTime < ApplicationRecord

  has_many :attendees
  has_many :users, through: :attendees
  belongs_to :gym
end
