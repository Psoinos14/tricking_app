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
      location: params[:location],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
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
