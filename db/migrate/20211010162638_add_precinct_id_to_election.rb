class AddPrecinctIdToElection < ActiveRecord::Migration[6.1]
  def change
    add_column :elections, :precinct_id, :bigint
  end
end
