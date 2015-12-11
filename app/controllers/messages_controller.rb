class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.send_message(@message).deliver_now
      redirect_to new_message_path, notice: "Sent! We'll get back to you soon!"
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
