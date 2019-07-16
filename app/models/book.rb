class Book < ApplicationRecord
  validates :title, :author, :progress, :start, :comment, :image, presence: true
end
