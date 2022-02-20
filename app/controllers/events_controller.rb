class EventsController < ApplicationController
  
  def all
    events = Event.all
    render json: events, include: {venue: {except: [:updated_at, :created_at]}}
  end

  def one
    event = Event.find params[:id]

    render json: event # Add in :include here to grab venue, comment and user images.
  end

end
