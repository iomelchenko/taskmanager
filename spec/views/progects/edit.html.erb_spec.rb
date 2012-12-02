require 'spec_helper'

describe "progects/edit" do
  before(:each) do
    @progect = assign(:progect, stub_model(Progect,
      :name => "MyString"
    ))
  end

  it "renders the edit progect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => progects_path(@progect), :method => "post" do
      assert_select "input#progect_name", :name => "progect[name]"
    end
  end
end
