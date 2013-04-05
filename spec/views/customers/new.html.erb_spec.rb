require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :code => "MyString",
      :maincontact => "MyString",
      :avatar => ""
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_code[name=?]", "customer[code]"
      assert_select "input#customer_maincontact[name=?]", "customer[maincontact]"
      assert_select "input#customer_avatar[name=?]", "customer[avatar]"
    end
  end
end
