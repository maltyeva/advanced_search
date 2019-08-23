class CocktailsController < ApplicationController

  def index
    if params["search"]
      @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      @cocktails = Cocktail.all.global_search("#{@filter}").order(name: :asc)
    else
      @cocktails = Cocktail.all.order(name: :asc)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
