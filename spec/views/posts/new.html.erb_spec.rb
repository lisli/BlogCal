require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :date => "MyString",
      :summary => "MyString",
      :image => "MyString",
      :id => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_date[name=?]", "post[date]"
      assert_select "input#post_summary[name=?]", "post[summary]"
      assert_select "input#post_image[name=?]", "post[image]"
      assert_select "input#post_id[name=?]", "post[id]"
    end
  end
end
