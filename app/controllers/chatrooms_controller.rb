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
    if chatroom_exists?
      redirect_to chatrooms_path
    else
      @chatroom.save
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js
      end
    end
  end

  def chatroom_exists?
    condition1 = Chatroom.find_by(sender: @chatroom.sender, receiver: @chatroom.receiver)
    condition2 = Chatroom.find_by(sender: @chatroom.receiver, receiver: @chatroom.sender)
    condition1.nil? || condition2.nil? ? false : true

  end

  def find_chatroom
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :receiver, :sender)
  end

end
