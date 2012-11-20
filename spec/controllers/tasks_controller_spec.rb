require 'spec_helper'

describe TasksController do

  describe "GET 'task'" do
    it "returns http success" do
      get 'task'
      response.should be_success
    end
  end

end
