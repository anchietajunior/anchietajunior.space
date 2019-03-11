class Post < ApplicationRecord

  before_save :define_published_at

  validates :title, :body, presence: true

  scope :published, -> { where(published: true).order(created_at) }

  private

  def define_published_at
    self.published_at = self.published ? Date.today : nil
  end
end
