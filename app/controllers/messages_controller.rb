class MessagesController < ApplicationController
    def new
      @message = Message.new
    end
  
    def create
      @message = Message.new(email: params[:email],subject: params[:subject],message: params[:message])
      if @message.save
        redirect_to contact_path
      else
        render 'new'
      end
    end

    def message
      @data = Message.all
    end
  
    def show
      @message = Message.find(params[:id])
    end
  
    private
  
    def message_params
      params.require(:message).permit(:email, :subject, :message)
    end
end
