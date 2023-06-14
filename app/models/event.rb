class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :participants
  has_many :propositions, dependent: :destroy
  has_many :votes, through: :propositions
  validates :name, presence: true
  validates :name, uniqueness: true
end
