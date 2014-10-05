require 'spec_helper'

describe "boxes/new" do
  before(:each) do
    assign(:box, stub_model(Box,
      :box_id => 1,
      :user_id => 1,
      :name => "MyString",
      :total_value => 1.5
    ).as_new_record)
  end

  it "renders new box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boxes_path, "post" do
      assert_select "input#box_box_id[name=?]", "box[box_id]"
      assert_select "input#box_user_id[name=?]", "box[user_id]"
      assert_select "input#box_name[name=?]", "box[name]"
      assert_select "input#box_total_value[name=?]", "box[total_value]"
    end
  end
end
