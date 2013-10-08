class ReviewsController < ApplicationController
  def index
  end

  def create
    #params[:user_id] = current_user.id
    @reviews = Review.new(reviews_params)
    if @reviews.save
      redirect_to recipe_path(params[:recipe_id])
    else
      flash[:notice] = 'Not Saved'
      redirect_to recipe_path(:action => 'show', :controller => 'recipes', :id => params[:review][:recipe_id])
    end
  end

  def update
  end

  def destroy
  end

  private
    def reviews_params
      
      params.require(:review).permit(:user_id , :recipe_id, :comment, :parent)
      
    end
end
