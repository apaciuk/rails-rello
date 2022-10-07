require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { build(:user) } 
    it 'is valid with valid attributes' do
        expect(user).to be_valid
    end
end