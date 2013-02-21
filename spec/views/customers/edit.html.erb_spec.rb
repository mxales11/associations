require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :id => 1,
      :name => "MyString",
      :phone => 1,
      :contact => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_id", :name => "customer[id]"
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_contact", :name => "customer[contact]"
    end
  end
end
