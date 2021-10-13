class VoteBlueprint < Blueprinter::Base
  identifier :id
  fields :election_candidate_id, :voter_id, :election_id

end