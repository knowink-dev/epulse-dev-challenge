class VoterBlueprint < Blueprinter::Base
  identifier :id
  fields :id, :first_name, :last_name, :address_1, :address_2, :city, :state, :zip_code, :phone_number, :party_affiliation, :provisional, :created_at, :updated_at, :last_4_digits_ssn

  association :votes, blueprint: VoteBlueprint
end