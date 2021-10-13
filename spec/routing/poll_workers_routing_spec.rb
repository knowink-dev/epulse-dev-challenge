require "rails_helper"

RSpec.describe PollWorkersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/poll_workers").to route_to("poll_workers#index")
    end

    it "routes to #new" do
      expect(get: "/poll_workers/new").to route_to("poll_workers#new")
    end

    it "routes to #show" do
      expect(get: "/poll_workers/1").to route_to("poll_workers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/poll_workers/1/edit").to route_to("poll_workers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/poll_workers").to route_to("poll_workers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/poll_workers/1").to route_to("poll_workers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/poll_workers/1").to route_to("poll_workers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/poll_workers/1").to route_to("poll_workers#destroy", id: "1")
    end
  end
end
