class TicketsController < ApplicationController

  def new
    tickets = Ticket.create! ticket_params
    
    render json: tickets # TODO: figure out how to catch errors with nested creates!
  end

  private

  def ticket_params
    params.require(:_json).map do |param|
      param.permit(:user_id, :event_id, :seat_row, :seat_column)
    end
  end

end
