class Assistant < ApplicationRecord
  has_many :activity_logs, dependent: :delete_all, inverse_of: :assistant

end
