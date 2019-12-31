class PagesController < ApplicationController
  def index
    @posts = Post.all.order('published_at DESC').first(5)
    @projects = nil
    @books = Book.all
  end

  def about;end
  def contact;end
end
