class ClownsController < ApplicationController

  def index
    @clowns = policy_scope(Clown)
  end

  def new
    @clown = Clown.new
    authorize @clown
  end

  def create
    @clown = Clown.new(params[:clown])
    @clown.save
    @clown.user = current_user
    authorize @clown
  end

  def show
    @clown = Clown.find(params["id"])
    authorize @clown
  end

  def edit
    authorize @clown
  end

  def update
    authorize @clown
  end

  def destroy
    authorize @clown
  end

  private

  def article_params
    params.require(:clown).permit(:username, :email, :photo, :personnal_info)
  end
end
