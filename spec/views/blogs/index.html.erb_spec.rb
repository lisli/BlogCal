require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :title => "Title",
        :description => "Description",
        :frequency => "Frequency"
      ),
      stub_model(Blog,
        :title => "Title",
        :description => "Description",
        :frequency => "Frequency"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Frequency".to_s, :count => 2
  end
end
