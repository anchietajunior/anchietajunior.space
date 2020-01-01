module Dashboard
  class CategoriesController < ApplicationController

    layout 'dashboard'

    before_action :authorize
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.all
    end

    def show;end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to dashboard_categories_path, notice: 'Category created'
      else
        render :new
      end
    end

    def edit;end

    def update
      if @category.update(category_params)
        redirect_to dashboard_category_path(@category), notice: 'Category created'
      else
        render :new
      end
    end

    def destroy
      if @category.destroy
        redirect_to dashboard_categories_path, notice: 'Category deleted'
      end
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
  end
end
