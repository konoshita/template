class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  def index
    @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
    @q = Reservation.ransack(params[:q])
    @search_reservations = @q.result(distinct: true)
  end

  def new
    @reservation = Reservation.new
    @day = params[:day]
    @time = params[:time]
    @start_time = DateTime.parse(@day + " " + @time + " " + "JST")
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path @reservation.id
    else
      render :new
    end
  end

  def edit
    @reservation = reservation.find(params[:id])
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to request.referer
    else
      render :new
    end
  end

  def destroy
    @reservation = reservation.find(params[:id])
    @reservation.destroy
    redirect_to request.referer
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:day, :time, :start_time, :name)
  end
end
