class PrecinctPollster < ApplicationRecord
  belongs_to :precinct
  belongs_to :poll_worker
end
