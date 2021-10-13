class ElectionCandidateEnrollment < ApplicationRecord
  belongs_to :election
  belongs_to :election_candidate
end
