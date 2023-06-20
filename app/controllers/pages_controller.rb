class PagesController < ApplicationController
  def home
    @clowns = Clown.all
  end

  def show
  end
end
