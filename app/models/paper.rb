class Paper < ApplicationRecord
  belongs_to :car
  has_many_attached :photos
end
