require 'rails_helper'

RSpec.describe "channelcomments/new", type: :view do
  before(:each) do
    assign(:channelcomment, Channelcomment.new(
      :comment_id => 1,
      :body => "MyText"
    ))
  end

  it "renders new channelcomment form" do
    render

    assert_select "form[action=?][method=?]", channelcomments_path, "post" do

      assert_select "input[name=?]", "channelcomment[comment_id]"

      assert_select "textarea[name=?]", "channelcomment[body]"
    end
  end
end
