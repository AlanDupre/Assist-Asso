class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  # def new
  #   @event = Event.new
  # end

  # def create
  #   @event = Event.new(event_params)
  #   @event.user = current_user
  #   @event.save
  # end

  # def edit
  #   @event = Event.find(params[:id])
  # end

  # def update
  #   @event = Event.find(params[:id])
  #   @event.update(event_params)
  # end

  # def destroy
  #   @event = Event.find(params[:id])
  #   @event.destroy

  # end

  private

  def book_params
    params.require(:event).permit(:name, :description, :address, :cp, :city, :name_asso, :category, :start_date, :end_date, :name_asso)
  end
end
