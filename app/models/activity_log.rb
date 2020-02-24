class ActivityLog < ApplicationRecord
  belongs_to :baby
  belongs_to :assistant
  belongs_to :activity
  
  scope :in_progress, lambda {
    where(stop_time: nil)
  }

  scope :finished, lambda {
    where("stop_time IS NOT NULL")
  }

end
