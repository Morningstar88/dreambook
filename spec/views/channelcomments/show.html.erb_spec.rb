require 'rails_helper'

RSpec.describe "channelcomments/show", type: :view do
  before(:each) do
    @channelcomment = assign(:channelcomment, Channelcomment.create!(
      :comment_id => 2,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
