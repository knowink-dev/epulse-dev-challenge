class VoterPrecinct < ApplicationRecord
  belongs_to :voter
  belongs_to :precinct
end
