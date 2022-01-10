require 'rails_helper'
require 'spec_helper'
require 'factory_bot'

RSpec.describe "Users requests", type: :request do
  describe "Log in behavior" do
  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end
    
    it "Authorized users will visit to their account" do
      get root_path
      
      expect(response).to have_http_status(:success)
      expect(response.body).to include("GOAL - task manager")
    end
    
    it "Edit Personal Information" do
      get edit_user_registration_path
      
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Edit Personal info")
    end
  end
end
