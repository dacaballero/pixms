require 'spec_helper'

describe "user_profiles/show" do
  before(:each) do
    @user_profile = assign(:user_profile, stub_model(UserProfile,
      :user_id => "",
      :first_name => "First Name",
      :last_name => "Last Name",
      :avatar => "",
      :country => "Country",
      :address => "MyText",
      :phone => "Phone",
      :cellphone => "Cellphone",
      :client_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(//)
    rendered.should match(/Country/)
    rendered.should match(/MyText/)
    rendered.should match(/Phone/)
    rendered.should match(/Cellphone/)
    rendered.should match(//)
  end
end
