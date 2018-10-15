class Register < ApplicationRecord
  belongs_to :evidence
  belongs_to :vehicle
  belongs_to :user
  belongs_to :report
end
