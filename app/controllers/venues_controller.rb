class VenuesController < ApplicationController
  def all
    lat_lng = [params["0"].to_f, params["1"].to_f]
    venues = Venue.near(lat_lng)
    render json: venues, include: {events: {except: [:updated_at, :created_at]}}
  end
end