require 'rails_helper'

RSpec.describe "channelposts/show", type: :view do
  before(:each) do
    @channelpost = assign(:channelpost, Channelpost.create!(
      :title => "Title",
      :body => "MyText",
      :link => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
