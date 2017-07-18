class PlansController < ApplicationController
  def create
    plan = Plan.new(plan_params)

    unless plan.save
      @error_message = plan.errors.messages
    end

  end


  private

  def plan_params
    params.permit(:start_date, :finish_date, :description)
  end
end
