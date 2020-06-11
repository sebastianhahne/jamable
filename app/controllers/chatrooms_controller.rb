class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.all
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.sender = params[:chatroom][:sender].to_i
    @chatroom.receiver = params[:chatroom][:receiver].to_i
    if chatroom_exists?
      find_chatroom
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
    condition1.nil? && condition2.nil? ? false : true
  end

  def find_chatroom
    profile_user = User.find_by(id: @chatroom.receiver)
    chatroom1 = Chatroom.find_by(sender: current_user.id, receiver: profile_user.id)
    chatroom2 = Chatroom.find_by(sender: profile_user.id, receiver: current_user.id)
    if chatroom1.nil?
      redirect_to chatroom_path(chatroom2)
    else
      redirect_to chatroom_path(chatroom1)
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :receiver, :sender)
  end
end
