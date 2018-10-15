class Send < ApplicationRecord
  belongs_to :notification
  belongs_to :report
end
