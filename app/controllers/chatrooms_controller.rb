class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.all
  end

  # def new
  #   @chatroom = Chatroom.new
  # end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.sender = params[:chatroom][:sender].to_i
    @chatroom.receiver = params[:chatroom][:receiver].to_i
    raise

    if Chatroom.exists?(name: @chatroom.name)
      redirect_to chatrooms_path
    else
      @chatroom.save
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js
      end
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :receiver, :sender)
  end

end
