class Api::StatusesController < ApplicationController

  def index
    @statuses = Status.all
    render 'index.json.jb'
  end

  def create
    @status = Status.new(
      text: params[:text],
      user_id: current_user.id)
    @status.save
    render 'create.json.jb'
  end

end
