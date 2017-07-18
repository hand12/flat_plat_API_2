class Location < ApplicationRecord
  belongs_to :plan, dependent: :destroy
  validates :name, :latitude, :longitude, presence: true
end
