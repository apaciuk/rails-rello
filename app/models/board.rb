class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy

  validates :name, presence: true
  validates :user_id, presence: true

end
