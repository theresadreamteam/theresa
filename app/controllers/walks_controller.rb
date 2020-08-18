class WalksController < ApplicationController
  def all
    # @walks = Walk.all
    walks = '[{:id=>1, :name=>"asdf", :description=>"asdf", :latitude=>"51.533136", :longitude=>"-0.129538", :postcode=>"NW11HD"}, {:id=>2, :name=>"asdf", :description=>"asdf", :latitude=>nil, :longitude=>nil, :postcode=>"asdf"}, {:id=>3, :name=>"asdf", :description=>"asdf", :latitude=>nil, :longitude=>nil, :postcode=>"sdffg"}, {:id=>4, :name=>"asdf", :description=>"asdf", :latitude=>"40.5", :longitude=>"20.5", :postcode=>"asdf"}]'
  end
  def example
  end
end