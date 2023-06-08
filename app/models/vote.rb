class Vote < ApplicationRecord
  belongs_to :proposition
  belongs_to :user

  validates :user_id, uniqueness: { scope: [:proposition_id] }

  # before_create :already_exist

  # def already_exist
  #   event_id_where_this_user_voted = Vote.where(user: user).map { |vote| Proposition.find_by(id: vote.proposition_id).event_id}.uniq
  #   this_event_id = Proposition.find(proposition_id).event_id
  #   if event_id_where_this_user_voted.include?(this_event_id)
  #     vote = Vote.joins(proposition: :event).where(user: user).where("events.id = #{this_event_id}")
  #     vote.update(proposition_id: proposition_id)

  #     Event.find(this_event_id).propositions.map { |prop| prop.votes.where(user: user) }.first.update(proposition_id: proposition_id)
  #     return false
  #   end

  # end
end
