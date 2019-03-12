class PagesController < ApplicationController
  def index
    @posts = PostDecorator.decorate_collection(Post.home)
  end
end
