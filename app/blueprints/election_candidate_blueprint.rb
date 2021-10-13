class ElectionCandidateBlueprint < Blueprinter::Base
  identifier :id
  fields :first_name, :last_name, :party, :occupation, :address_1, :address_2, :city, :state, :zip_code, :phone_number, :gender, :election_id, :created_at, :updated_at

  field :vote_count do |candidate_vote|
    "#{candidate_vote.votes.size}"
  end

  field :election_overview do |overview|
    "Voted Candidate: #{overview.votes.includes([:election_candidate]).pluck(:first_name)}"
  end
end