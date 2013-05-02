require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :title => "Title",
        :note => "Note",
        :user_id => 1
      ),
      stub_model(Comment,
        :title => "Title",
        :note => "Note",
        :user_id => 1
      )
    ])
  end

  it "renders a list of comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
