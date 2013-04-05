require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :code => "MyString",
      :maincontact => "MyString",
      :avatar => ""
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_code[name=?]", "customer[code]"
      assert_select "input#customer_maincontact[name=?]", "customer[maincontact]"
      assert_select "input#customer_avatar[name=?]", "customer[avatar]"
    end
  end
end
