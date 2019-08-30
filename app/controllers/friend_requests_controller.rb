class FriendRequestsController < ApplicationController
  before_action :set_friend_request, except: [:index, :create]

  def create
    friend = User.find(params[:friend_id])
    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      render json: @friend_request, status: :created
    else
      render json: @friend_request.errors, status: :unprocessable_entity
    end
  end

  def index
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
    render 'index.json.jb'
  end

  def destroy
    @friend_request.destroy
    head :no_content
    render 'destroy.json.jb'
  end

  def update
    @friend_request.accept
    head :no_content
    render 'update.json.jb'
  end
  
  def set_friend_request
    @friend_request = FriendRequest.find(params[:id])
  end
end

