class Plan < ApplicationRecord
  validate :valid_date?
  has_one :location, autosave: true

  def valid_date?
    unless start_date <= finish_date
      errors.add(:invalid_date, "無効な日付です。") 
    end
  end

end
