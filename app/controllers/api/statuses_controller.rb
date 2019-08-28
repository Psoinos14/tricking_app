class Api::StatusesController < ApplicationController

  def index
    @friends = current_user.friends
    render 'index.json.jb'
  end

  def create
    @status = Status.new(
      text: params[:text],
      user_id: current_user.id)
    @status.save!
    render 'create.json.jb'
  end

end
