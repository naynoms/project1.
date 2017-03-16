class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create category_params
    poem = Poem.find params[:category][:poem_id]
    category.poems << category
    redirect_to category
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    category.update category_params
    redirect_to category
  end

  def show
    @category = Category.find params[:id]
    @poems = Poem.all
  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    redirect_to catergories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :poem_id)

  end
end
