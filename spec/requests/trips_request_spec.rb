require 'rails_helper'

RSpec.describe "Trips", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/trips/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/trips/create"
      expect(response).to have_http_status(:success)
    end
  end

end
