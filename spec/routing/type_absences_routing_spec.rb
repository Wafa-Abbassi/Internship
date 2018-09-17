require "rails_helper"

RSpec.describe TypeAbsencesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/type_absences").to route_to("type_absences#index")
    end

    it "routes to #show" do
      expect(:get => "/type_absences/1").to route_to("type_absences#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/type_absences").to route_to("type_absences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_absences/1").to route_to("type_absences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_absences/1").to route_to("type_absences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_absences/1").to route_to("type_absences#destroy", :id => "1")
    end
  end
end
