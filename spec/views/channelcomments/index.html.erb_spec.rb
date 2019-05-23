require 'rails_helper'

RSpec.describe "channelcomments/index", type: :view do
  before(:each) do
    assign(:channelcomments, [
      Channelcomment.create!(
        :comment_id => 2,
        :body => "MyText"
      ),
      Channelcomment.create!(
        :comment_id => 2,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of channelcomments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
