require "spec_helper"

describe MicripostsController do
  describe "routing" do

    it "routes to #index" do
      get("/micriposts").should route_to("micriposts#index")
    end

    it "routes to #new" do
      get("/micriposts/new").should route_to("micriposts#new")
    end

    it "routes to #show" do
      get("/micriposts/1").should route_to("micriposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/micriposts/1/edit").should route_to("micriposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/micriposts").should route_to("micriposts#create")
    end

    it "routes to #update" do
      put("/micriposts/1").should route_to("micriposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/micriposts/1").should route_to("micriposts#destroy", :id => "1")
    end

  end
end
