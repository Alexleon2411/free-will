class Proposition < ApplicationRecord
  belongs_to :event
  validadtes :content, presence: true
end
