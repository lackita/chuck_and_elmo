require "spec_helper"

describe ComicsController do
  describe "routing" do

    it "routes to #index" do
      get("/comics").should route_to("comics#index")
    end

    it "routes to #new" do
      get("/comics/new").should route_to("comics#new")
    end

    it "routes to #show" do
      get("/comics/1").should route_to("comics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comics/1/edit").should route_to("comics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comics").should route_to("comics#create")
    end

    it "routes to #update" do
      put("/comics/1").should route_to("comics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comics/1").should route_to("comics#destroy", :id => "1")
    end

  end
end
