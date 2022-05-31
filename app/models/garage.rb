class Garage < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :specialty, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
