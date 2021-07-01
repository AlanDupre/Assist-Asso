class DashboardsController < ApplicationController

  def show
  @user = current_user
  @events = @user.events
  
  @percent = []

    if @events.present?
        @events.each_with_index do |event, index|
        @result = 0.to_f
        @total = 0.to_f
        event.donations.each do |donation|
        @result +=  donation.quantity 
        end
          event.needs.each do |need|
            @total += need.quantity
          end
        @percent << (@result/@total * 100).truncate
      end
    
    end
  end
end
 