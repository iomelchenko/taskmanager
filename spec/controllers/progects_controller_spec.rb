require 'spec_helper'

describe ProgectsController do

  describe "GET 'progect'" do
    it "returns http success" do
      get 'progect'
      response.should be_success
    end
  end

end
