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
    
    render json: current_user.tickets.group_by { |ticket| ticket.event.name }, include: [
      {event: {except: [:image, :description, :updated_at, :created_at]}},
      {venue: {except: [:seat_rows, :seat_columns, :standing_capacity, :image, :updated_at, :created_at, :longitude, :latitude]}},
      {user: {only: [:name]}}
    ]

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
