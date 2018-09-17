require 'rails_helper'

RSpec.describe "TypeAbsences", type: :request do
  describe "GET /type_absences" do
    it "works! (now write some real specs)" do
      get type_absences_path
      expect(response).to have_http_status(200)
    end
  end
end
