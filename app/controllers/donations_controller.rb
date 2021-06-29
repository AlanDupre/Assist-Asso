class DonationsController < ApplicationController
  def create
    @need = Need.find(params[:need_id])
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    @donation.need = @need
    if @donation.save
      redirect_to event_path(@need.event)
    else
      redirect_to events_path
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:quantity)
  end
end
