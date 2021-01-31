class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path
      flash[:notice] = "予約が完了しました"
    end
  end

  def index
    @reservations = Reservation.all
  end

  def edit
  end

  def update
  end

  private
  def reservation_params
    params.permit(:start_date, :end_date, :person_num, :room_id).merge(user_id: @current_user.id)
  end
end
