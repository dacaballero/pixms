require 'spec_helper'

describe "UserProfiles" do
  it "shows an empty profile with new user" do
  	@user_attr  = FactoryGirl.attributes_for(:user)
  	@user = User.create!( @user_attr )
  	
  	visit edit_user_profile_path(@user.id)

  	puts current_path

  	current_path.should eq(new_user_session_path)

  	fill_in "user_email", :with => @user.email
  	fill_in "user_password", :with => @user.password

  	click_button "commit"

  	#page.should have_content('User Profile')
  end
end
