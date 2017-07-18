class PlansController < ApplicationController
  def create
    plan = Plan.new(plan_params)
    if plan.save
      location = plan.build_location(location_params)
      @error_message = location.errors.messages unless location.save
    else
      @error_message = plan.errors.messages
    end

  end


  private

  def plan_params
    params.require(:plan).permit(:start_date, :finish_date, :description)
  end

  def location_params
    params.require(:plan).require(:location).permit(:name, :latitude, :longitude)
  end
end
