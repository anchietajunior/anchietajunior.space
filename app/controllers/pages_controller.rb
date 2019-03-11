class PagesController < ApplicationController
  def index
    @posts = Post.home
  end
end
