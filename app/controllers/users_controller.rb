class UsersController < ApplicationController

  before_action :authenticate_user, except: :create

  def current
    render json: current_user
  end

  def create
    
    # binding.pry
    user = User.new user_params  

    user.save

    render json: user

  end

  def tickets
    events = Event.joins(:users).where(users: {id: current_user.id}).uniq
    
    # TODO: Find out the correct syntax for this!!!
    # render json: events, include: {tickets: {where: {user_id: current}}}
    
    render json: events, include: :tickets

  end

  def edit
    
  end

  def update
    
  end

  private
  def user_params
    params.require(:user)
    .permit(
      :email,
      :name,
      :password,
      :user_level,
      :image
    )
  end
  
end
