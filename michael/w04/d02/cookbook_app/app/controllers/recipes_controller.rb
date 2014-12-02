class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def show
  @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def create
  @recipe = Recipe.new recipe_params
    if @recipe.save
  redirect_to recipe_path(@recipe)
    else
      render :new
  end
end

def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end 

private
def recipe_params
  params.require(:recipe).permit(:name, :course, :cooktime, :servingsize, :instructions, :image)
end

end
