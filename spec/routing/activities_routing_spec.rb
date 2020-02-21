require "rails_helper"

RSpec.describe ActivitiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/api/activities").to route_to("activities#index")
    end

    it "routes to #show" do
      expect(:get => "/api/activities/1").to route_to("activities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/api/activities").to route_to("activities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/activities/1").to route_to("activities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/activities/1").to route_to("activities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/activities/1").to route_to("activities#destroy", :id => "1")
    end
  end
end
