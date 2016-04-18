class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def new
    @room = Room.new
  end
  
  def create 
    @room = current_user.rooms.create(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def edit
  end
  
  private
  
    def room_params
      params.require(:room).permit(:name, :user_id, :created_by, :is_public)
    end
end
