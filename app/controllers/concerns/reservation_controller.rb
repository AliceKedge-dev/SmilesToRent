class ReservationsController < ApplicationController

def show
  @reservation = Reservation.new
  @reservation.clown_name = @clown.username
  @reservation.clown_photo = @clown.photos.first.key
end

def reserve_clown
  @clown = current_user.clown
  @reservation = Reservation.new(reservation_params)
  @reservation.clown = Clown.find_by(username: params[:reservation][:clown_name])
  @reservation.save
  redirect_to profile_path
end

def create
  @clown = current_user.clown
  @reservation = Reservation.new(reservation_params)
  @reservation.clown = Clown.find_by(username: params[:reservation][:clown_name])
  if @reservation.save
    redirect_to profile_path
  else
    render :new
  end
end

private

  def reservation_params
    params.require(:reservation).permit(:date, :heure, :user_id, :status)
  end
end
