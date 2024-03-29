require 'spec_helper'

describe "progects/index" do
  before(:each) do
    assign(:progects, [
      stub_model(Progect,
        :name => "Name"
      ),
      stub_model(Progect,
        :name => "Name"
      )
    ])
  end

  it "renders a list of progects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
