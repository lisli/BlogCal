require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :date => "MyString",
      :summary => "MyString",
      :image => "MyString",
      :id => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_date[name=?]", "post[date]"
      assert_select "input#post_summary[name=?]", "post[summary]"
      assert_select "input#post_image[name=?]", "post[image]"
      assert_select "input#post_id[name=?]", "post[id]"
    end
  end
end
