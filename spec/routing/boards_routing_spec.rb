require "rails_helper"

RSpec.describe BoardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boards").to route_to("boards#index")
    end

    it "routes to #new" do
      expect(get: "/boards/new").to route_to("boards#new")
    end

    it "routes to #show" do
      expect(get: "/boards/1").to route_to("boards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/boards/1/edit").to route_to("boards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boards").to route_to("boards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boards/1").to route_to("boards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boards/1").to route_to("boards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boards/1").to route_to("boards#destroy", id: "1")
    end
  end
end
