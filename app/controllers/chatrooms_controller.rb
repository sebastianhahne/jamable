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
    @chatroom.sender = params[:chatroom][:sender]
    @chatroom.receiver = params[:chatroom][:receiver]
    if @chatroom.save
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = { error: ["a chatroom with this topic already exists"]}
        format.html { redirect_to new_chatroom_path }
        format.js { render template: 'chatrooms/chatroom_error.js.erb'}
      end
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

end

