# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Board, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:board) { FactoryBot.create(:board) }
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
  end

  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many(:board_columns).dependent(:destroy) }
  end
end
