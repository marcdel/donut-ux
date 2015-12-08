require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "posts a valid message successfully" do
      post :create, message: {
        name: 'marc',
        email: 'marc@email.com',
        subject: 'hello',
        content: 'content'
      }

      expect(response).to redirect_to(new_message_path)
    end

  end

end
