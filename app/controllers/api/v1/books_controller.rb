module Api
  module V1
    class BooksController < ActionController::Base
      def index
        render json: Book.all.order('created_at DESC'), status: :ok
      end
    end
  end
end