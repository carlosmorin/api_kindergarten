class Baby < ApplicationRecord
  has_many :activity_logs, inverse_of: :baby
end
