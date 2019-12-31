class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category

  before_save :define_published_at

  validates :title, :body, presence: true

  scope :all_published, -> { where(published: true).order('created_at DESC') }
  scope :home,  -> { where(published: true).order('created_at DESC').limit(5) }

  private

  def define_published_at
    unless self.published_at.present?
      self.published_at = self.published ? Date.today : nil
    end
  end
end
