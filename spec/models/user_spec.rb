require 'rails_helper'


RSpec.describe "Users", type: :request do 
  describe "GET /users" do
    it "return sucess status" do
      get users_path
      expect(response).to have_http_status(200)
      it "the user title is present"
    end
  end 
end

describe "POST /users" do
  context "Whe it has valid parameters" do 
    it "creates the user with correct attributes"
  end

  context "Whe it has not valid parameters" do
    it "does not creates the user"
  end
end
