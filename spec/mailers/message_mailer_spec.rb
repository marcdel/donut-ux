require "rails_helper"

RSpec.describe MessageMailer, type: :mailer do
  it 'sucessfully sends messages' do
    valid_attributes = {
      name: 'marc',
      email: 'test@email.com',
      subject: 'hello',
      content: 'test test test'
    }

    message = Message.new valid_attributes

    email = MessageMailer.send_message(message).deliver_now

    expect(ActionMailer::Base.deliveries).not_to be_empty

    expect(email.to).to eq(['jaqtann@gmail.com','aliciajolivares@gmail.com'])
    expect(email.from).to eq(['test@email.com'])
    expect(email.subject).to eq('hello')
    expect(email.body.to_s).to eq('test test test')
  end
end
