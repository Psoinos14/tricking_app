class Api::UsersController < ApplicationController
  
  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      location: params[:location])
    @user.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.age = params[:age]
    @use.location = params[:location]
    @user.save
    render 'show.json.jb'
  end
end
