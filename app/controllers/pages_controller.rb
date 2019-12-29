class PagesController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC').last(5)
    @projects = nil
    @books = Book.all
  end
end
