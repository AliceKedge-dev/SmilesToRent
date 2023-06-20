class SearchController < ApplicationController
  include Pundit

  def search
    @query = params[:query]
    # Implémentez ici votre logique de recherche en fonction de vos besoins
    if @query == "melissandre"
      redirect_to "/clown"
    else
    @results = Clown.where("column LIKE ?", "%#{@query}%")
    user.admin? ? scope.all : scope.where(user: user)
    render :search
    end
  end

  def show
    @model = Model.find(params[:id])
    authorize @model
    # Reste du code de l'action
  end
end
