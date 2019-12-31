class PagesController < ApplicationController
  def index
    @posts = Post.all.order('published_at DESC').last(5)
    @projects = nil
    @books = Book.all
  end
end
