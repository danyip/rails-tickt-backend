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
      :user_level
    )
  end
  
end
