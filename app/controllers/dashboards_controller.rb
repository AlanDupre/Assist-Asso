class DashboardsController < ApplicationController

  def show
  @user = current_user
  @events = Event.last(1)
  end
end
