require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "",
      :logo => "",
      :phone_number => "",
      :address => "",
      :email => "",
      :webpage => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
      assert_select "input#client_logo[name=?]", "client[logo]"
      assert_select "input#client_phone_number[name=?]", "client[phone_number]"
      assert_select "input#client_address[name=?]", "client[address]"
      assert_select "input#client_email[name=?]", "client[email]"
      assert_select "input#client_webpage[name=?]", "client[webpage]"
    end
  end
end
