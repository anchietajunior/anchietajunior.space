class CategoriesController < ApplicationController

  before_action :category_params, only: [:show, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show;end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to dashboard_categories_path, notice: 'Category created' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.permit(:name)
  end
end
