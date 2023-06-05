class Vote < ApplicationRecord
  belongs_to :proposition
  belongs_to :user
end
