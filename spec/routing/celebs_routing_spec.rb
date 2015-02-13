require "rails_helper"

RSpec.describe CelebsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/celebs").to route_to("celebs#index")
    end

    it "routes to #new" do
      expect(:get => "/celebs/new").to route_to("celebs#new")
    end

    it "routes to #show" do
      expect(:get => "/celebs/1").to route_to("celebs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/celebs/1/edit").to route_to("celebs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/celebs").to route_to("celebs#create")
    end

    it "routes to #update" do
      expect(:put => "/celebs/1").to route_to("celebs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/celebs/1").to route_to("celebs#destroy", :id => "1")
    end

  end
end
