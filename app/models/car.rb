class Car < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :papers, dependent: :destroy
  has_many :maintenances, dependent: :destroy
  has_many :features, dependent: :destroy

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :plate, presence: true
end
