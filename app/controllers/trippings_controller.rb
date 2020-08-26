class TrippingsController < ApplicationController
  def show
    @tripping = Tripping.new
    @trips = Trip.where(user_id: current_user.id)
    p params
    @walk = Walk.find(params[:id])
  end

  def create
    walk_id = tripping_params[:walk_id]
    trip_id = tripping_params[:trip_id]
    # trip_id.each do |trip_id|
    # @tripping = Tripping.new(walk_id,trip_id)
    @tripping = Tripping.new(tripping_params)
    @tripping.save
    # end
    redirect_to '/walks/1'
  end

  private

  def tripping_params
    params.permit(:walk_id, :trip_id)
  end
end
