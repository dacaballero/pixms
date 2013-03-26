require 'spec_helper'

describe "user_profiles/new" do
  before(:each) do
    assign(:user_profile, stub_model(UserProfile,
      :user_id => "",
      :first_name => "MyString",
      :last_name => "MyString",
      :avatar => "",
      :country => "MyString",
      :address => "MyText",
      :phone => "MyString",
      :cellphone => "MyString",
      :client_id => ""
    ).as_new_record)
  end

  it "renders new user_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_profiles_path, "post" do
      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"
      assert_select "input#user_profile_first_name[name=?]", "user_profile[first_name]"
      assert_select "input#user_profile_last_name[name=?]", "user_profile[last_name]"
      assert_select "input#user_profile_avatar[name=?]", "user_profile[avatar]"
      assert_select "input#user_profile_country[name=?]", "user_profile[country]"
      assert_select "textarea#user_profile_address[name=?]", "user_profile[address]"
      assert_select "input#user_profile_phone[name=?]", "user_profile[phone]"
      assert_select "input#user_profile_cellphone[name=?]", "user_profile[cellphone]"
      assert_select "input#user_profile_client_id[name=?]", "user_profile[client_id]"
    end
  end
end
