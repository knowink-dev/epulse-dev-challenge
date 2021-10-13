class ElectionVoterBlueprint < Blueprinter::Base
  identifier :id
  fields :election_id, :voter_id

  association :voter, blueprint: VoterBlueprint
end