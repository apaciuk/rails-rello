# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :user
  has_many :board_columns, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
