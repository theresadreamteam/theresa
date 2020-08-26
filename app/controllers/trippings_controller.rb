class TrippingsController < ApplicationController
  def show
    @tripping = Tripping.new
    @trips = Trip.where(user_id: current_user.id)
    p params
    @walk = Walk.find(params[:id])
  end

  def create
    p tripping_params
    @tripping = Tripping.new(tripping_params)
    @tripping.save
    redirect_to '/walks/1'
  end

  private

  def tripping_params
    params.permit(:walk_id, :trip_id)
  end
end
