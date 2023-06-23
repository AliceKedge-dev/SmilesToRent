class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.clown = Clown.find(params[:clown_id])
    authorize @booking
    if @booking.save!
      redirect_to profile_path, notice: "Le booking a été créé avec succès."
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params["id"])
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params["id"])
    @booking.destroy
    redirect_to root_path, notice: "Le booking a été retiré avec succès.", status: :see_other
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user, :clown)
  end
end
