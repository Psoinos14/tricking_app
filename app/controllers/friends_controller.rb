class FriendsController < ApplicationController
  before_action :set_friend, only: :destroy

  def index
    @friends = current_user.friends
  end

  def destroy
    current_user.remove_friend(@friend)
    head :no_content
  end

  def set_friend
    @friend = current_user.friends.find(params[:id])
  end

  def accept_friend_request
    @friend_request = FriendRequest.find_by(user_id: params[:user_id], friend_id: current_user)
    @friend_request.accept
    render 'index.json.jb'
  end

end