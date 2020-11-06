class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(
          title: params[:title],
          duration: params[:duration],
          start_date: params[:start_date],
          description: params[:description],
          price: params[:price],
          location: params[:location]
            )
    @event.uopdate(administrator: current_user)
    if @event.save
      redirect_to events_index_path, notice: "Event created"
    else
      render "new", notice: "#{@event.errors}"
      end
  end

  def index
  end

  def show
  end

  def update
  end

  def destroy
  end
end
