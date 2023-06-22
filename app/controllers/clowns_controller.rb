class ClownsController < ApplicationController
  def index
    @clowns = policy_scope(Clown)
  end

  def new
    @clown = Clown.new
    authorize @clown
  end

  def create
    @clown = Clown.new(clown_params)
    @clown.user = current_user
    authorize @clown
    if @clown.save
      redirect_to root_path, notice: "Le clown a été créé avec succès."
    else
      render :new
    end
  end

  def show
    @clown = Clown.find(params["id"])
    authorize @clown
  end

  def destroy
    @clown = Clown.find(params["id"])
    @clown.destroy
    redirect_to root_path, notice: "Le clown a été retiré avec succès.", status: :see_other

    authorize @clown
  end

  private

  def clown_params
    params.require(:clown).permit(:username, :email, :personal_info, :password, :price, :category, :localisation, photos: [])
  end
end
