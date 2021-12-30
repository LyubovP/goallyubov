require 'rails_helper'
require 'spec_helper'
require 'factory_bot'

RSpec.describe "Tasks requests", type: :request do

  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end
 
  let!(:tasks) { create(:task) }
  let!(:task_params) { attributes_for(:task) }
  
  describe "GET #new" do
    it "renders :new" do
      get new_task_path(tasks)
   
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "create task" do
      expect {
        post tasks_path, params: { task: task_params }
      }.to change { Task.count }.by(1)

      expect(response).to redirect_to(root_path)
    end

    it "renders :new if creating fails" do
      post tasks_path, params: { task: { title: "" } }
      
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #update" do
    it "updates task" do
      put task_path(tasks), params: { task: task_params }

      expect(response).to redirect_to(root_path)
    end

    it "renders :edit if updating fails" do
      put task_path(tasks), params: { task: { title: "" } }
      
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "deletes task" do
      expect {
        delete task_path(tasks)
      }.to change { Task.count }.from(1).to(0)
      expect(response).to redirect_to(root_path)
    end
  end
end    