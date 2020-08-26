class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params.merge(user_id: current_user.id))
    @trip.save
    redirect_to '/trips'
  end

  def index
    @trips = Trip.all
    p @trips[0].trippings
  end

  def mytrips
    @trips = current_user.trips
    @trips[0]
  end

  def show
    @trip = Trip.find(params.permit(:id)[:id])
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trippings = @trip.trippings
    @trippings.destroy
    redirect_to '/'
  end

  private
  def trip_params
    params.require(:trip).permit(:name)
  end

end
