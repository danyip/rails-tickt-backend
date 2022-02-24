class TicketsController < ApplicationController
  before_action :authenticate_user

  def new

    tickets = Ticket.create! ticket_params
    
    render json: tickets, include: [
                                  {event: {except: [:image, :description, :updated_at, :created_at]}},
                                  {venue: {except: [:seat_rows, :seat_columns, :standing_capacity, :image, :updated_at, :created_at, :longitude, :latitude]}},
                                  {user: {only: [:name]}}
                                ]
  end

  private

  def ticket_params
    params.require(:_json).map do |param|
      param.permit(:event_id, :seat_row, :seat_column).merge(user_id: current_user.id )
    end
  end

end
