class Api::AttendeesController < ApplicationController
  def create
    @attendee = Attendee.new(
      day_and_time_id: params[:day_and_time_id],
      user_id: current_user.id)
    @attendee.save!
    render 'create.json.jb'
  end
end
