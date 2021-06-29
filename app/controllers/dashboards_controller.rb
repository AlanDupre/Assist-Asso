class DashboardsController < ApplicationController

  def show
  @user = current_user
  @events = @user.events
  @result = 0.to_f
  @total = 0.to_f
  
    @events.each do |event|
      event.donations.each do |donation|
      @result +=  donation.quantity 
      end
      event.needs.each do |need|
        @total += need.quantity
      end
    end
    @percent = (@result/@total * 100).truncate
  end
end
