class Api::GymsController < ApplicationController

  def index
    @gyms = Gym.all
    render 'index.json.jb'
  end

  def show
    @gym = Gym.find_by(id: params[:id])
    # @dayandtime = DayAndTime.where(gym_id: params[:id])
    # @users = @dayandtime.user
    render 'show.json.jb'

  end
end
