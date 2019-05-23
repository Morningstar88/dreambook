require 'rails_helper'

RSpec.describe "channelposts/new", type: :view do
  before(:each) do
    assign(:channelpost, Channelpost.new(
      :title => "MyString",
      :body => "MyText",
      :link => "MyText"
    ))
  end

  it "renders new channelpost form" do
    render

    assert_select "form[action=?][method=?]", channelposts_path, "post" do

      assert_select "input[name=?]", "channelpost[title]"

      assert_select "textarea[name=?]", "channelpost[body]"

      assert_select "textarea[name=?]", "channelpost[link]"
    end
  end
end
