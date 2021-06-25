class NeedsController < ApplicationController
  # :show, :edit, :update, :destroy

  def show
    @need = Need.find(params[:id])
  end

  def new
    @need = Need.new
  end

  def create
    @need = Need.new(need_params)
    if @need.save
      redirect_to event_path
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
    redirect_to event_path(@need)
  end

  def destroy
    @need = Need.find(params[:id])
    @need.destroy
    redirect_to event_path
  end

  private 

  def need_params
    params.require(:need).permit(:category, :name, :quantity)
  end
end
