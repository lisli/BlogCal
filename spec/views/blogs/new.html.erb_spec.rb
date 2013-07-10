require 'spec_helper'

describe "blogs/new" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :title => "MyString",
      :description => "MyString",
      :frequency => "MyString"
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blogs_path, "post" do
      assert_select "input#blog_title[name=?]", "blog[title]"
      assert_select "input#blog_description[name=?]", "blog[description]"
      assert_select "input#blog_frequency[name=?]", "blog[frequency]"
    end
  end
end
