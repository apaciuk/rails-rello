class Card < ApplicationRecord
  belongs_to :board_column
  validates :content, presence: true
end
