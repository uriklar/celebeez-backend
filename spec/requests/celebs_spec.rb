require 'rails_helper'

RSpec.describe "Celebs", type: :request do
  describe "GET /celebs" do
    it "works! (now write some real specs)" do
      get celebs_path
      expect(response).to have_http_status(200)
    end
  end
end
