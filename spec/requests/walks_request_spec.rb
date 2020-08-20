require 'rails_helper'

RSpec.describe "Walks", type: :request do

  describe "GET /walk/new" do
    xit "returns http success" do
      get "/walks/new"
      expect(response).to have_http_status(:success)
    end
  end

end
