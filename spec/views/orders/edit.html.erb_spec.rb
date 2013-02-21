require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :item_name => "MyString",
      :customer_id => 1,
      :quantity => 1,
      :total_cost => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_item_name", :name => "order[item_name]"
      assert_select "input#order_customer_id", :name => "order[customer_id]"
      assert_select "input#order_quantity", :name => "order[quantity]"
      assert_select "input#order_total_cost", :name => "order[total_cost]"
    end
  end
end
