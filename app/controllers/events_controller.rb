class EventsController < ApplicationController
  
  def all
    events = Event.all
    render json: events, include: {venue: {except: [:updated_at, :created_at]}}
  end

  def one
    event = Event.find params[:id]
    render json: event, include: [
                                  {venue: {except: [:updated_at, :created_at]}}, 
                                  {comments: {include: [user: {only: [:name, :image]}]}}, 
                                  :tickets #TODO: try and make this return just the number of tickets
                                ]
  end

end
