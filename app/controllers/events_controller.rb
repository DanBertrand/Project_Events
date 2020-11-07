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
    @event.update(administrator: current_user)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
     @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
