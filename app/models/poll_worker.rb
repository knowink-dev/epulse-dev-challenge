class PollWorker < ApplicationRecord
  has_many :precinct_pollsters
  has_many :precincts, through: :precinct_pollsters

  def full_name
    "#{first_name} #{last_name}"
  end
end
