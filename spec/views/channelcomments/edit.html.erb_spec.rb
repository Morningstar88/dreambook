require 'rails_helper'

RSpec.describe "channelcomments/edit", type: :view do
  before(:each) do
    @channelcomment = assign(:channelcomment, Channelcomment.create!(
      :comment_id => 1,
      :body => "MyText"
    ))
  end

  it "renders the edit channelcomment form" do
    render

    assert_select "form[action=?][method=?]", channelcomment_path(@channelcomment), "post" do

      assert_select "input[name=?]", "channelcomment[comment_id]"

      assert_select "textarea[name=?]", "channelcomment[body]"
    end
  end
end
