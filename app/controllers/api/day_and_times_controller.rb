class Api::DayAndTimesController < ApplicationController

  def create
    @day_and_time = DayAndTime.new(
      day: params[:day],
      time: params[:time],
      gym_id: params[:gym_id],
      user_id: params[:user_id]
      )
    @day_and_time.save
    render 'create.json.jb'
  end

end
