require 'spec_helper'

describe "micriposts/edit" do
  before(:each) do
    @micripost = assign(:micripost, stub_model(Micripost,
      :box_id => 1,
      :user_id => 1,
      :name => "MyString",
      :total_value => 1.5
    ))
  end

  it "renders the edit micripost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", micripost_path(@micripost), "post" do
      assert_select "input#micripost_box_id[name=?]", "micripost[box_id]"
      assert_select "input#micripost_user_id[name=?]", "micripost[user_id]"
      assert_select "input#micripost_name[name=?]", "micripost[name]"
      assert_select "input#micripost_total_value[name=?]", "micripost[total_value]"
    end
  end
end
