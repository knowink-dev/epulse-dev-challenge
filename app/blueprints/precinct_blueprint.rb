class PrecinctBlueprint < Blueprinter::Base
  identifier :id
  # add others if needed
  fields :name, :voter_tabulation_district, :congressional_district, :state_senate, :state_house

  view :with_election_info do
    association :elections, blueprint: ElectionBlueprint
  end
end