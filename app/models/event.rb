class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :descritpion, presence: true
  validates :start_date, presence: true
  validates :nbr_participant, presence: true
end
