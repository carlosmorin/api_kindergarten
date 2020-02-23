class Activity < ApplicationRecord
  has_many :activity_logs, inverse_of: :activity

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
