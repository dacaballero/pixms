require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :name => "",
        :logo => "",
        :phone_number => "",
        :address => "",
        :email => "",
        :webpage => "Webpage"
      ),
      stub_model(Client,
        :name => "",
        :logo => "",
        :phone_number => "",
        :address => "",
        :email => "",
        :webpage => "Webpage"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Webpage".to_s, :count => 2
  end
end
