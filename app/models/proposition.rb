class Proposition < ApplicationRecord
  belongs_to :event
  validates :content, presence: true
  has_many :votes
end
