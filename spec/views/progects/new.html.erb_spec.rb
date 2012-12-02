require 'spec_helper'

describe "progects/new" do
  before(:each) do
    assign(:progect, stub_model(Progect,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new progect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => progects_path, :method => "post" do
      assert_select "input#progect_name", :name => "progect[name]"
    end
  end
end
