require 'rails_helper'

RSpec.describe "channelposts/edit", type: :view do
  before(:each) do
    @channelpost = assign(:channelpost, Channelpost.create!(
      :title => "MyString",
      :body => "MyText",
      :link => "MyText"
    ))
  end

  it "renders the edit channelpost form" do
    render

    assert_select "form[action=?][method=?]", channelpost_path(@channelpost), "post" do

      assert_select "input[name=?]", "channelpost[title]"

      assert_select "textarea[name=?]", "channelpost[body]"

      assert_select "textarea[name=?]", "channelpost[link]"
    end
  end
end
