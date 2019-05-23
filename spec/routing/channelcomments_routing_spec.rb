require "rails_helper"

RSpec.describe ChannelcommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/channelcomments").to route_to("channelcomments#index")
    end

    it "routes to #new" do
      expect(:get => "/channelcomments/new").to route_to("channelcomments#new")
    end

    it "routes to #show" do
      expect(:get => "/channelcomments/1").to route_to("channelcomments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/channelcomments/1/edit").to route_to("channelcomments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/channelcomments").to route_to("channelcomments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/channelcomments/1").to route_to("channelcomments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/channelcomments/1").to route_to("channelcomments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/channelcomments/1").to route_to("channelcomments#destroy", :id => "1")
    end

  end
end
