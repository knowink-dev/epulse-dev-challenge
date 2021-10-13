class Vote < ApplicationRecord
  belongs_to :voter
  belongs_to :election_candidate
  validate :vote_is_unique?, :on => :create

  def vote_is_unique?
    if Vote.where(voter_id: self.voter_id, election_id: self.election_id).any?
      errors.add(:base, :duplicate)
      false
    end
  end
end
