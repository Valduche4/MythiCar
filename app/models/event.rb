class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :nbr_participant, presence: true
  has_many :users, through: :participation
  has_many :participations, dependent: :destroy
end
