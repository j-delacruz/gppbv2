require "spec_helper"

describe AgencyTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/agency_types").should route_to("agency_types#index")
    end

    it "routes to #new" do
      get("/agency_types/new").should route_to("agency_types#new")
    end

    it "routes to #show" do
      get("/agency_types/1").should route_to("agency_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/agency_types/1/edit").should route_to("agency_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/agency_types").should route_to("agency_types#create")
    end

    it "routes to #update" do
      put("/agency_types/1").should route_to("agency_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/agency_types/1").should route_to("agency_types#destroy", :id => "1")
    end

  end
end
