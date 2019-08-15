class Attendee < ApplicationRecord
  belongs_to :day_and_time
  belongs_to :user
end
