class ReviewsController < ApplicationController
 before_action :set_recipe
 
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(recipe_params)
    @review.chef = current_user
    
  end

def show

end



def review_params
  
params.require(:review).permit(:name, :description)

end

def set_recipe
      @recipe = Recipe.find(params[:id])
end

end