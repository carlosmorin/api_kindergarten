class Assistant < ApplicationRecord
  has_many :activity_logs, inverse_of: :assistant
  
end
