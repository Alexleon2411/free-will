class Vote < ApplicationRecord
  belongs_to :proposition
  belongs_to :user
  #belongs_to :event, through: :proposition
end
