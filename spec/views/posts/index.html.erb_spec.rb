require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :date => "Date",
        :summary => "Summary",
        :image => "Image",
        :id => "Id"
      ),
      stub_model(Post,
        :title => "Title",
        :date => "Date",
        :summary => "Summary",
        :image => "Image",
        :id => "Id"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Id".to_s, :count => 2
  end
end
