require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :code => "Code",
        :maincontact => "Maincontact",
        :avatar => ""
      ),
      stub_model(Customer,
        :name => "Name",
        :code => "Code",
        :maincontact => "Maincontact",
        :avatar => ""
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Maincontact".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
