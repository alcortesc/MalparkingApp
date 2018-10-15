class Authenticate < ApplicationRecord
  belongs_to :user
  belongs_to :register
end
