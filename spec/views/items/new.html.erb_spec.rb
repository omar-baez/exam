require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :item_id => 1,
      :box_id => 1,
      :name => "MyString",
      :value => 1.5
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_item_id[name=?]", "item[item_id]"
      assert_select "input#item_box_id[name=?]", "item[box_id]"
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_value[name=?]", "item[value]"
    end
  end
end
