require "rails_helper"

RSpec.describe ChannelpostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/channelposts").to route_to("channelposts#index")
    end

    it "routes to #new" do
      expect(:get => "/channelposts/new").to route_to("channelposts#new")
    end

    it "routes to #show" do
      expect(:get => "/channelposts/1").to route_to("channelposts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/channelposts/1/edit").to route_to("channelposts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/channelposts").to route_to("channelposts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/channelposts/1").to route_to("channelposts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/channelposts/1").to route_to("channelposts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/channelposts/1").to route_to("channelposts#destroy", :id => "1")
    end

  end
end
