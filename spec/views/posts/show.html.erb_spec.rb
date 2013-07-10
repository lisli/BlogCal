require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "Title",
      :date => "Date",
      :summary => "Summary",
      :image => "Image",
      :id => "Id"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Date/)
    rendered.should match(/Summary/)
    rendered.should match(/Image/)
    rendered.should match(/Id/)
  end
end
