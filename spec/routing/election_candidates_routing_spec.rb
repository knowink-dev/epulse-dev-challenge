require "rails_helper"

RSpec.describe ElectionCandidatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/election_candidates").to route_to("election_candidates#index")
    end

    it "routes to #new" do
      expect(get: "/election_candidates/new").to route_to("election_candidates#new")
    end

    it "routes to #show" do
      expect(get: "/election_candidates/1").to route_to("election_candidates#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/election_candidates/1/edit").to route_to("election_candidates#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/election_candidates").to route_to("election_candidates#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/election_candidates/1").to route_to("election_candidates#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/election_candidates/1").to route_to("election_candidates#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/election_candidates/1").to route_to("election_candidates#destroy", id: "1")
    end
  end
end
