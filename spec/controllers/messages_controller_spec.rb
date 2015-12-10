require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "redirects to new message path" do
      post :create, message: {
        name: 'marc',
        email: 'marc@email.com',
        subject: 'hello',
        content: 'content'
      }

      expect(response).to redirect_to(new_message_path)
    end

    it "adds message to deliveries" do
      expect {
        post :create, message: {
          name: 'marc',
          email: 'test@email.com',
          subject: 'hi',
          content: 'hello'
        }
      }.to change{
        ActionMailer::Base.deliveries.size
      }.by(1)
    end

    it "delivers the correct message" do
        post :create, message: {
          name: 'marc',
          email: 'test@email.com',
          subject: 'hi',
          content: 'hello'
        }

        last_email = ActionMailer::Base.deliveries.last

        expect(last_email.to).to eq(['jaqtann@gmail.com','aliciajolivares@gmail.com'])
        expect(last_email.from).to eq(['test@email.com'])
        expect(last_email.subject).to eq('hi')
        expect(last_email.body.to_s).to eq('hello')

        ActionMailer::Base.deliveries.clear
    end

  end
end
