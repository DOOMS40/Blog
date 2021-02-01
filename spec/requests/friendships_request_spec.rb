require 'rails_helper'

RSpec.describe "Friendships", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/friendships/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/friendships/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/friendships/create"
      expect(response).to have_http_status(:success)
    end
  end

end
