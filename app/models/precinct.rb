class Precinct < ApplicationRecord
  include PgSearch::Model
  has_many :elections
  has_many :election_candidates, through: :elections
  has_many :precinct_pollsters, dependent: :destroy
  has_many :poll_workers, through: :precinct_pollsters
  has_many :voter_precincts, dependent: :destroy
  has_many :voters, through: :voter_precincts
  validates :name, presence: true
  validates :voter_tabulation_district, presence: true
  accepts_nested_attributes_for :precinct_pollsters, allow_destroy: true, reject_if: :all_blank

  pg_search_scope :search_by_term, against: [:name, :congressional_district],
                  using: {
                      tsearch: {
                          any_word: true,
                          prefix: true
                      }
                  }
end
