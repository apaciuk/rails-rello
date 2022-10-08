require 'rails_helper'

RSpec.describe Board, type: :model do
  let(:board ) { FactoryBot.create(:board) }
  describe 'validations' do
      it { is_expected.to belong_to :user }
      #it { is_expected.to have_many :lists }
      it { is_expected.to validate_presence_of :name }
  end

 # describe 'associations' do
  #  it { belongs_to(:user) }
  #  it { has_many(:lists) }
 # end
end
