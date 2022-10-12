# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :user
  has_many :board_columns, dependent: :destroy, class_name: 'BoardColumn', foreign_key: 'board_id'
  has_many :cards, through: :board_columns, dependent: :destroy, class_name: 'Card', foreign_key: 'board_column_id'

  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
