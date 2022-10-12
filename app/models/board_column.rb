class BoardColumn < ApplicationRecord
  belongs_to :board
  has_many :cards, dependent: :destroy, class_name: 'Card', foreign_key: 'board_column_id'
end
