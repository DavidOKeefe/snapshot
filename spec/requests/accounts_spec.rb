require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  describe "GET /accounts" do
    it "works!" do
      get accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
