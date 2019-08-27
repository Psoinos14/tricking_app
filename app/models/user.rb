class User < ApplicationRecord
  
  # has_many :gyms, through: :day_and_times (Do I need this??)
  has_many :attendees
  has_many :day_and_times, through: :attendees
  has_many :statuses
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :statuses

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end

  # starting the MUTUAL(Facebook Model) of the article linked
end
