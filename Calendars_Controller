# meeting-helper
Customers are able to create meetings with other Customers of the same Business. Each Customer has its own Calendar and each Calendar has its own set of Events.

class CalendarsController < ApplicationController
  respond_to :js, :html


  def new
    @calendar = Calendar.new(calendar_params)

  end

  def create
    @calendar = Calendar.new(calendar_params)
  end

private
  def calendar_params
    params.require(:customer_id)
  end


  def show
    @calendar = current_customer.calendar
    @events = @calendar.events
  end

  def calendarChange
    colleagueID = params[:colleagueID]
    #colleague = Customer.where(id: :colleagueID)
    @colleague = Customer.find params[:colleagueID]
    @colcalendar = @colleague.calendar
    @events = @colleague.calendar.events

  end

end
