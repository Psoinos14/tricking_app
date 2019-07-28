class Api::GymsController < ApplicationController

  def show
    @gym = Gym.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
