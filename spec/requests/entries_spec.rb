require 'rails_helper'

RSpec.describe "Entries", type: :request do
  describe "GET /entries" do
    it "works!" do
      get entries_path
      expect(response).to have_http_status(200)
    end
  end
end
