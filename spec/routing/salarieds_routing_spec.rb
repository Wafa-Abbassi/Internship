require "rails_helper"

RSpec.describe SalariedsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/salarieds").to route_to("salarieds#index")
    end

    it "routes to #show" do
      expect(:get => "/salarieds/1").to route_to("salarieds#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/salarieds").to route_to("salarieds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/salarieds/1").to route_to("salarieds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/salarieds/1").to route_to("salarieds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/salarieds/1").to route_to("salarieds#destroy", :id => "1")
    end
  end
end
