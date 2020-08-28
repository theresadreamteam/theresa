class TrippingsController < ApplicationController
  def show
    @tripping = Tripping.new
    @trips = Trip.where(user_id: current_user.id)
    p params
    @walk = Walk.find(params[:id])
  end

  def create
    @tripping = Tripping.new(tripping_params)
    @tripping.save
    # end
    redirect_to '/mytrips'
  end

  private

  def tripping_params
    params.require(:tripping).permit(:trip_id,:walk_id)
  end
end
