require 'rails_helper'

RSpec.describe "Prozesses", type: :request do
  describe "GET /prozesses" do
    it "works! (now write some real specs)" do
      get prozesses_path
      expect(response).to have_http_status(200)
    end
  end
end
