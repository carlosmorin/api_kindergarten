require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do

  let(:valid_attributes) do
    { 
      name: "Activity test", 
      description: "Lorem ipsum dolor sit amet." 
    }
  end

  let(:invalid_attributes) do
    { 
      name: nil,
      description: "Lorem ipsum dolor sit amet." 
    }
  end

  describe "GET #index" do
    it "returns a success response" do
      activity = Activity.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      activity = Activity.create! valid_attributes
      get :show, params: {id: activity.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Activity" do
        expect {
          post :create, params: {activity: valid_attributes}
        }.to change(Activity, :count).by(1)
      end

      it "renders a JSON response with the new activity" do

        post :create, params: {activity: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.location).to eq(activity_url(Activity.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new activity" do

        post :create, params: {activity: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        { 
          name: "Activity test updated", 
          description: "Lorem ipsum dolor sit amet, consectetur adipisicing.." 
        }
      end

      it "updates the requested activity" do
        activity = Activity.create! valid_attributes
        put :update, params: {id: activity.to_param, activity: new_attributes}
        activity.reload
        expect(activity.name).to eql("Activity test updated")
      end

      it "renders a JSON response with the activity" do
        activity = Activity.create! valid_attributes

        put :update, params: {id: activity.to_param, activity: valid_attributes}
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the activity" do
        activity = Activity.create! valid_attributes

        put :update, params: {id: activity.to_param, activity: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested activity" do
      activity = Activity.create! valid_attributes
      expect {
        delete :destroy, params: {id: activity.to_param}
      }.to change(Activity, :count).by(-1)
    end
  end

end
