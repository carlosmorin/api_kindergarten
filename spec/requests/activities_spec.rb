require 'rails_helper'

RSpec.describe "Activities", type: :request do
  describe "GET /api/activities" do
    it "returns activities list" do
      get activities_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/activities/:id" do
    let(:activity) { create :activity }
    
    it "It should return an activity" do
      get activity_path(activity.id)
      expect(response).to have_http_status(200)
    end
  end

end
