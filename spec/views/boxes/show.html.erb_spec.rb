require 'spec_helper'

describe "boxes/show" do
  before(:each) do
    @box = assign(:box, stub_model(Box,
      :box_id => 1,
      :user_id => 2,
      :name => "Name",
      :total_value => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
  end
end
