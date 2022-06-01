class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :nbr_participant, presence: true
  has_many :users, through: :participation
  has_many :participations, dependent: :destroy
  has_one_attached :photo
  # has_many :participants_users, through: :participations, class_name: 'User', foreign_key: :user_id
end
