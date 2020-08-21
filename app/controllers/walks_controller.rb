class WalksController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @walks = Walk.all
    if @walks.count > 0
      @latitude = @walks[0].coordinates_start.split(',')[0]
      @longitude = @walks[0].coordinates_start.split(',')[-1]
    else
      @latitude = 41.45
      @longitude = -0.05
    end
    @walkywalks =  []
    @walks.each do |walk|
      @walkywalks << {latitude: walk.coordinates_start.split(',')[0], longitude: walk.coordinates_start.split(',')[-1]}
    end
  end

  def show
    @walk = Walk.find(params[:id])
  end

  def new
    @walk = Walk.new
  end

  def edit
    @walk = Walk.find(params[:id])
  end

  def create
    @walk = Walk.new(walk_params.merge(user_id: current_user.id))
    @walk.save
    redirect_to @walk
  end

  def update
    @walk = Walk.find(params[:id])
   
    if @walk.update(walk_params)
      redirect_to @walk
    else
      render 'edit'
    end
  end

  def destroy
    @walk = Walk.find(params[:id])
    @walk.destroy
 
    redirect_to walks_path
  end

  private
    def walk_params
      params.require(:walk).permit(:photo, :title, :description, :coordinates_start, :coordinates_end, :distance)
    end
end