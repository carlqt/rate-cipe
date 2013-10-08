class RecipesController < ApplicationController
  def new
    @recipes = Recipe.new
  end

  def index
    @recipes = Recipe.all
  end

  def show
    
    @reviews = Review.new
    @recipe = Recipe.find(params[:id])
    @allReviews = @recipe.reviews
  end

  def create
    #params[:user_id] = current_user.id
    @recipes = Recipe.new(recipe_params)

    if @recipes.save
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def recipe_params
      
      params.require(:recipe).permit(:user_id , :recipe, :title)
      
    end
end
