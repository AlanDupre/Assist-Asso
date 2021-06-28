class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category].present?
      @events = Event.where(category: params[:category])
    else
      @events = Event.all
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @donation = Donation.new()
    @needs = @event.needs
    if @event.geocoded?
      @markers =
      @markers = [
        {
          lat: @event.latitude,
          lng: @event.longitude
        }
      ]
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to new_event_need_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :CP, :city, :name_asso, :category, :start_date, :end_date, :name_asso, :photo, :cover_img)
  end

  def donation_params
    params.require(:donation).permit(:quantity)
  end
end
