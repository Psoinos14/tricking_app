class Api::StatusesController < ApplicationController

  def create
    @status = Status.new(
      text: params[:text],
      user_id: params[:user_id])
    @status.save
    render 'create.json.jb'
  end

end
