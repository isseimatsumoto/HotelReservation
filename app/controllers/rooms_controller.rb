class RoomsController < ApplicationController

  before_action :authenticate_user

  def new
    @room = Room.new
  end

  def show
    @room = Room.find_by(id:params[:id])
  end

  def create
    @room = Room.new(room_params)
    @room.image.attach(params[:room][:image])

    if @room.save
      flash[:notice] = "新規ルームを登録しました"
      redirect_to rooms_path
    else
      render "new"
    end
  end

  def index
    @rooms = Room.search_area(params[:search_area])
    @rooms = Room.search_keyword(params[:search_keyword])
  end

  def edit
    @room = Room.find_by(id: params[:id])
  end

  def update
    @room = Room.find_by(id: params[:id]) 
    if @room.update(room_params)
      flash[:notice] = "登録情報を更新しました"
      redirect_to room_path(@room)
    else
      render "edit"
    end
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    flash[:notice] = "ルームを削除しました"
    redirect_to rooms_path
  end

  private
  def room_params
    params.require(:room).permit(:name, :introduction, :fee, :address, :image).merge(user_id: @current_user.id)
  end

end
