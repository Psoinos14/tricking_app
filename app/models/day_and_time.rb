class DayAndTime < ApplicationRecord

  has_many :attendees
  has_many :users, through: :attendees
  belongs_to :gym 

  def friendly_datetime
    datetime.strftime("%a, %d %b %Y %l:%M %p")
  end
end
