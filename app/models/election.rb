class Election < ApplicationRecord
  enum election_type: {local: 1, federal: 2}
  has_many :election_candidate_enrollments, dependent: :destroy
  has_many :election_candidates, through: :election_candidate_enrollments
  has_many :election_voters
  has_many :voters, through: :election_voters
  has_many :votes, through: :voters
  has_one :precinct
  belongs_to :precinct
  validates_associated :precinct, message: "An election must be associated with a precinct"
  validates :election_type, presence: true
  validates :election_title, presence: true
  validates :election_date, presence: true
  accepts_nested_attributes_for :election_candidate_enrollments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :election_voters, reject_if: :all_blank, allow_destroy: true
end
