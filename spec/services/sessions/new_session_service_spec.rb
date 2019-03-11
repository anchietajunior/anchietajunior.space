require 'rails_helper'

RSpec.describe Sessions::NewSessionService do

  let(:user) { create(:user) }

  let(:params) do
    {
      :email => user.email,
      :password => "12345678"
    }
  end

  let(:params2) do
    {
      :email => "algumemail@email.com",
      :password => "password"
    }
  end

  let(:service) do
    described_class.call(params)
  end

  let(:service2) do
    described_class.call(params2)
  end

  describe "new session" do

    context "success" do
      it "has a success? true value" do
        expect(service.success?).to be_truthy
      end
    end

    context "failure" do
      it "has a success? false value" do
        expect(service2.success?).to be_falsy
      end
    end

  end

end
