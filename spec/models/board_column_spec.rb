require 'rails_helper'

RSpec.describe BoardColumn, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:board) { FactoryBot.create(:board) }
  let(:board_column) { FactoryBot.create(:board_column) } 

    it 'is valid with valid attributes' do
        expect(board_column).to be_valid
    end
    describe 'associations' do
        it { is_expected.to belong_to :board }
        it { is_expected.to have_many :cards }
    end
end
