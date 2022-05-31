class Car < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :plate, presence: true

  has_many :papers
  has_many :maintenances
  has_many :features
end
