class ElectionBlueprint < Blueprinter::Base
  identifier :id
  fields :election_title, :state, :city, :election_date, :election_type, :supervisor_name, :created_at, :updated_at, :precinct_id

  association :election_candidates, blueprint: ElectionCandidateBlueprint

  view :with_voters do
    association :election_voters, blueprint: ElectionVoterBlueprint
  end
end