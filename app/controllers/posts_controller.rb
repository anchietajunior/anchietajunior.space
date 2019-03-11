class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  private
      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:id)
      end
end