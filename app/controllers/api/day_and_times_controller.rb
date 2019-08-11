class Api::DayAndTimesController < ApplicationController

  def create
    @day_and_time = DayAndTime.new(
      day: params[:day],
      time: params[:time],
      gym_id: params[:gym_id],
      user_id: current_user.id
      )
    @day_and_time.save
    render 'create.json.jb'
  end

  def show
    the_id = params[:id]
    @day_and_time = DayAndTime.find_by(id: the_id)
    render 'show.json.jb'
  end

end
