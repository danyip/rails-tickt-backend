class VenuesController < ApplicationController
  def all
    venues = Venue.all
    render json: venues, include: {events: {except: [:updated_at, :created_at]}}
  end
end