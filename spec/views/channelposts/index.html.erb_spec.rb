require 'rails_helper'

RSpec.describe "channelposts/index", type: :view do
  before(:each) do
    assign(:channelposts, [
      Channelpost.create!(
        :title => "Title",
        :body => "MyText",
        :link => "MyText"
      ),
      Channelpost.create!(
        :title => "Title",
        :body => "MyText",
        :link => "MyText"
      )
    ])
  end

  it "renders a list of channelposts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
