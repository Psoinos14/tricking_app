class Api::StatusesController < ApplicationController

  def index
    if !current_user
      @statuses = Status.all
      render 'no_user_index.json.jb'
    else
      @user = current_user
      @friends = current_user.friends
      render 'index.json.jb'
    end
  end

  def create
    @status = Status.new(
      text: params[:text],
      user_id: current_user.id)
    @status.save!
    render 'create.json.jb'
  end

end
