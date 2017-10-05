class Location < ApplicationRecord
  belongs_to :plan, dependent: :destroy
  validates :name, presence: true

  geocoded_by :name
  after_validation :geocode
end
