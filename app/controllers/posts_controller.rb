class PostsController < ApplicationController

  before_action :find_post, only: [:show]

  def index
    @posts = Post.all.order('CREATED_AT DESC')
  end

  def show
  end

  private

  def find_post
    @post = Post.find_by(slug: params[:id])
  end
end