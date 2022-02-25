class EventsController < ApplicationController
  
  def all
    events = Event.all
    render json: events, include: {venue: {except: [:updated_at, :created_at]}}
  end

  def search
    search = params[:search].downcase
    match_event = Event.all.where("lower(name) LIKE ?", "%#{search}%")
    render json: match_event, include: {venue: {except: [:updated_at, :created_at]}}

  end

  def one
    event = Event.find params[:id]
    render json: event, include: [
                                  {venue: {except: [:updated_at, :created_at]}}, 
                                  {comments: {include: [user: {only: [:name, :image]}]}}, 
                                  :tickets
                                ]
  end

end
