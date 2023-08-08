require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "returns success status" do
      get users_path
      expect(response).to have_http_status(200)
    end

    it "the user's title is present" do
      users = create_list(:user, 3)
      get users_path
      users.each do |user|
        expect(response.body).to include(user.title)
      end 
    end
  end
end
