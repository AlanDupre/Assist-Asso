class NeedsController < ApplicationController
  def show
    @need = Need.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @need = Need.new
  end

  def create
    @event = Event.find(params[:event_id])
    @need = Need.new(need_params)
    @need.event = @event
    if @need.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @need = Need.find(params[:id])
  end

  def update
    @need = Need.find(params[:id])
    @need.update(need_params)
    redirect_to event_path(@need.event)
  end

  def destroy
    @need = Need.find(params[:id])
    @need.destroy
    redirect_to event_path(@need.event)
  end

  private

  def need_params
    params.require(:need).permit(:category, :name, :quantity)
  end
end
