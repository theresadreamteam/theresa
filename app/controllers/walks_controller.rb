class WalksController < ApplicationController
  def show
    @walk = Walk.find(params[:id])
  end

  def all
    @walks = Walk.all
    walks = '[{:id=>1, :name=>"asdf", :description=>"asdf", :latitude=>"51.533136", :longitude=>"-0.129538", :postcode=>"NW11HD"}, {:id=>2, :name=>"asdf", :description=>"asdf", :latitude=>nil, :longitude=>nil, :postcode=>"asdf"}, {:id=>3, :name=>"asdf", :description=>"asdf", :latitude=>nil, :longitude=>nil, :postcode=>"sdffg"}, {:id=>4, :name=>"asdf", :description=>"asdf", :latitude=>"40.5", :longitude=>"20.5", :postcode=>"asdf"}]'
  end

  def example
  end

  def new
    @walk = Walk.new
  end

  def create
    @walk = Walk.new(walk_params)

    @walk.save
    redirect_to @walk
  end

  private
    def walk_params
      params.require(:walk).permit(:title, :description, :coordinates_start, :coordinates_end, :distance)
    end
end