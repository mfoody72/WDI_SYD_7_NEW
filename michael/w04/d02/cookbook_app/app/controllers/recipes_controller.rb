class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def show
  end

  def edit
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
    if @recipe.update(recipe_params)
    redirect_to @recipe
  else
    render :edit
  end
  end
  
  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end 

private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

def recipe_params
  params.require(:recipe).permit(
    :name, 
    :course, 
    :cooktime, 
    :servingsize, 
    :instructions, 
    :image, 
    :book_id,
    { ingredient_ids:[] })
end
end



