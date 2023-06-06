class Event < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_many :propositions
end
