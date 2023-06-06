class Proposition < ApplicationRecord
  belongs_to :event
  validates :content, presence: true
end
