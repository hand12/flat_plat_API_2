class PlansController < ApplicationController

  def create
    plan = Plan.new(plan_params)
    location = Location.new(location_params)
    plan.location = location
    @error_message = plan.errors.messages unless plan.save
  end


  private

  def plan_params
    params.require(:plan).permit(:start_date, :finish_date, :description)
  end

  def location_params
    params.require(:location).permit(:name, :latitude, :longitude)
  end
end
