require 'spec_helper'

describe "user_profiles/index" do
  before(:each) do
    assign(:user_profiles, [
      stub_model(UserProfile,
        :user_id => "",
        :first_name => "First Name",
        :last_name => "Last Name",
        :avatar => "",
        :country => "Country",
        :address => "MyText",
        :phone => "Phone",
        :cellphone => "Cellphone",
        :client_id => ""
      ),
      stub_model(UserProfile,
        :user_id => "",
        :first_name => "First Name",
        :last_name => "Last Name",
        :avatar => "",
        :country => "Country",
        :address => "MyText",
        :phone => "Phone",
        :cellphone => "Cellphone",
        :client_id => ""
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
