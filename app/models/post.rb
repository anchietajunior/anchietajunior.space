class Post < ApplicationRecord
  scope :published, -> { where(published: true).order(created_at) }
end
