class Voter < ApplicationRecord
  has_many :election_voters
  has_many :elections, through: :election_voters
  has_many :precinct_pollsters
  has_many :precincts, through: :precinct_pollsters
  has_many :votes
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address_1, presence: true
  validates :party_affiliation, presence: true
  before_save :remove_spaces_from_voter_name


  def remove_spaces_from_voter_name
    self.first_name = first_name.squish
    self.last_name = last_name.squish
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
