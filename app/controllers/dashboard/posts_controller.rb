module Dashboard
  class PostsController < ApplicationController

    layout 'dashboard'

    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
      @posts = Post.all.order('created_at DESC')
    end

    def show
    end

    def new
      @post = Post.new
    end

    def edit
    end

    def create
      @post = Post.new(post_params)
      set_publication_date
      respond_to do |format|
        if @post.save
          format.html { redirect_to dashboard_posts_path(@post), notice: 'Post was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        set_publication_date
        if @post.update(post_params)
          format.html { redirect_to dashboard_post_path(@post), notice: 'Post was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_posts_path, notice: 'Post was successfully deleted.' }
      end
    end

    private
      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :body, :published, :published_at)
      end

      def set_publication_date
        @post.published_at = params['post']['published'] == '1' ? Date.today : nil
      end
  end
end
