class Car < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :plate, presence: true
end
