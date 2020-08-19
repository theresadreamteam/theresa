class WalksController < ApplicationController
  def show
    @walk = Walk.find(params[:id])
  end

  def all
    @walks = Walk.all
    @latitude = @walks[0].coordinates_start.split(',')[0]
    @longitude = @walks[0].coordinates_start.split(',')[-1]
    @walkywalks =  []
    @walks.each do |walk|
      @walkywalks << {latitude: walk.coordinates_start.split(',')[0], longitude: walk.coordinates_start.split(',')[-1]}
    end
  end

  def new
    @walk = Walk.new
  end

  def create
    @walk = Walk.new(walk_params)
    # @walk.photo.attach(params[:photo])
    @walk.save
    redirect_to @walk
  end

  private
    def walk_params
      params.require(:walk).permit(:photo, :title, :description, :coordinates_start, :coordinates_end, :distance)
    end
end