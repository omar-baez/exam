require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :item_id => 1,
      :box_id => 1,
      :name => "MyString",
      :value => 1.5
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_item_id[name=?]", "item[item_id]"
      assert_select "input#item_box_id[name=?]", "item[box_id]"
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_value[name=?]", "item[value]"
    end
  end
end
