class Api::DayAndTimesController < ApplicationController

  def index
    @day_and_times = DayAndTime.all
    render 'index.json.jb'
  end
  
  def create
    @day_and_time = DayAndTime.new(
      datetime: params[:datetime],
      gym_id: params[:gym_id],
      )
    @day_and_time.save!
    render 'create.json.jb'
  end

  def show
    the_id = params[:id]
    @day_and_time = DayAndTime.find_by(id: the_id)
    render 'show.json.jb'
  end

end
