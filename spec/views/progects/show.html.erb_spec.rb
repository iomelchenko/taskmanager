require 'spec_helper'

describe "progects/show" do
  before(:each) do
    @progect = assign(:progect, stub_model(Progect,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
