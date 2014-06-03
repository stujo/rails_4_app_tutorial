require 'spec_helper'

describe User do
  context "with valid email and password" do
    subject(:user) { FactoryGirl.build(:user) }

    it { should be_valid}

  end
end
