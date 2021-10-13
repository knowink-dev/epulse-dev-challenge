class VoterKioskController < ApplicationController
  include Wicked::Wizard
  steps :voter_registration, :election_selection, :candidate_selection, :complete_submission

  def voter_search
    if params[:first_name].present? && params[:last_name].present? && params[:last_4_digits_ssn].present?
      @voter = Voter.find_by(first_name: params[:first_name], last_name: params[:last_name], last_4_digits_ssn: params[:last_4_digits_ssn])
      if @voter.present?
        redirect_to election_selection_path(id: :election_selection, voter_id: @voter.id), notice: "Found your record!"
      else
        redirect_to :voter_registration, alert: "No voter by that name in our system!"
      end
    end
  end

  def create_vote
    @voter = Voter.find(params[:voter_id])
    @election_candidate = ElectionCandidate.find(params[:election_candidate_id])
    @election = Election.find(params[:election_id])
    @vote = Vote.new
    @vote.election_id = @election.id
    @vote.election_candidate_id = @election_candidate.id
    @vote.voter_id = @voter.id
    @election_voter = ElectionVoter.new
    @election_voter.election_id = @election.id
    @election_voter.voter_id = @voter.id

    Voter.transaction do
     @vote.save!
     @election_voter.save!
    end
    respond_to do |f|
      if @vote.save
        f.html {redirect_to voter_search_path, notice: "Your vote was cast for #{@election_candidate.full_name}!"}
      else
        f.html {redirect_to vote_for_election_candidate_path(election_id: @election.id, voter_id: @voter.id), notice: "Unable to save your vote, please speak with your polling representative to verify your information" }
      end
    end
  end

  def election_selection
    @voter = Voter.find(params[:voter_id])
    @elections = Election.where(city: @voter.city).or(Election.where(state: @voter.state))
  end

  def vote_for_election_candidate
    @voter = Voter.find(params[:voter_id])
    @election = Election.find(params[:election_id])
  end

  def show
    case step
    when :voter_registration

    when :election_selection
          @voter = Voter.find(params[:voter_id])
    end
  end

    private
    def vote_params
      params.require(:vote).permit(Vote.attribute_names.map(&:to_sym))
    end
end
