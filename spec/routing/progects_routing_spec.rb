require "spec_helper"

describe ProgectsController do
  describe "routing" do

    it "routes to #index" do
      get("/progects").should route_to("progects#index")
    end

    it "routes to #new" do
      get("/progects/new").should route_to("progects#new")
    end

    it "routes to #show" do
      get("/progects/1").should route_to("progects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/progects/1/edit").should route_to("progects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/progects").should route_to("progects#create")
    end

    it "routes to #update" do
      put("/progects/1").should route_to("progects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/progects/1").should route_to("progects#destroy", :id => "1")
    end

  end
end
