require 'rails_helper'

describe Message, :type => :model do
  it 'responds to name, email, subject, content' do
    msg = Message.new

    [:name, :email, :subject, :content].each do |attr|
      expect(msg).to respond_to(attr)
    end
  end

  it 'should accept valid attributes' do
    valid_attrs = {
      name: 'marc',
      email: 'marc@email.com',
      subject: 'hi',
      content: 'hello'
    }

    msg = Message.new valid_attrs

    expect(msg).to be_valid
  end

  it 'should not accept blank attributes' do
    msg = Message.new
    
    expect(msg).not_to be_valid
  end
end
