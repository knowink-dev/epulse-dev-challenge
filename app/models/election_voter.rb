class ElectionVoter < ApplicationRecord
  belongs_to :election
  belongs_to :voter
end
