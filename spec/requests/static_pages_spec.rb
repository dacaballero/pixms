require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "Should have a login link" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Login')
    end
  end
end
