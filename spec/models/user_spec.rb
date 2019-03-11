require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  describe "creating" do

    context "success" do
      it { is_expected.to validate_presence_of :email }

      it "is a valid user" do
        expect(user.valid?).to be_truthy
      end
    end

    context "failure" do
      it "is not a valid user" do
        expect(User.new.valid?).to be_falsy
      end
    end

  end
end
