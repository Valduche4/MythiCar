class Maintenance < ApplicationRecord
  belongs_to :car
  has_many_attached :photos
end
