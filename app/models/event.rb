class Event < ApplicationRecord
  validates :title, :starts_at, presence: true
  scope :upcoming, -> { where("starts_at >= ?", Time.current.beginning_of_day).order(:starts_at) }
end
