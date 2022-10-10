# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :omniauthable, :rememberable, :validatable, :trackable

  has_one_attached :avatar
  has_person_name
  has_noticed_notifications

  has_many :notifications, as: :recipient, dependent: :destroy
  has_many :services
  has_many :boards, dependent: :destroy
  # has_many :lists, through: :boards
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  enum role: %i[member admin]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :member
  end
end
