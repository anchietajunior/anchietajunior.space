require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post1) { build(:post) }
  let(:post2) { build(:post, title: "") }
  let(:post3) { create(:post, :already_published) }
  let(:post4) { create(:post, :not_published) }

  describe "creating" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }

    it "is valid" do
      expect(post1.valid?).to be_truthy
    end

    it "is not valid" do
      expect(post2.valid?).to be_falsy
    end
  end

  describe "publishing" do
    it "has a published_at when published" do
      expect(post3.published_at.present?).to be_truthy
    end

    it "does not have a published_at date" do
      expect(post4.published_at.present?).to be_falsy
    end
  end

end
