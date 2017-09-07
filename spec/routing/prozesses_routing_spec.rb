require "rails_helper"

RSpec.describe ProzessesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prozesses").to route_to("prozesses#index")
    end

    it "routes to #new" do
      expect(:get => "/prozesses/new").to route_to("prozesses#new")
    end

    it "routes to #show" do
      expect(:get => "/prozesses/1").to route_to("prozesses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prozesses/1/edit").to route_to("prozesses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prozesses").to route_to("prozesses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prozesses/1").to route_to("prozesses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prozesses/1").to route_to("prozesses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prozesses/1").to route_to("prozesses#destroy", :id => "1")
    end

  end
end
