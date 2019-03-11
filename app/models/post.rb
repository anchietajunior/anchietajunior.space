class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  before_save :define_published_at

  validates :title, :body, presence: true

  scope :home, -> { where(published: true).order('created_at DESC').limit(5) }

  private

  def define_published_at
    self.published_at = self.published ? Date.today : nil
  end
end
