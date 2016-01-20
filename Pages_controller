class PagesController < ApplicationController

  #before_action :require_customer, only: [:main]

  def home

  end


  def main
    @events = current_customer.calendar.events
    @event = current_customer.calendar.events.find_by(params[:name])
  end

end
