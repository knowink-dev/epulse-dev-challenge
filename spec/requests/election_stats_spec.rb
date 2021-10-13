require 'rails_helper'

RSpec.describe "ElectionStats", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/election_stats/show"
      expect(response).to have_http_status(:success)
    end
  end

end
