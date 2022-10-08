require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  describe "validations" do 
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end
  end
end
