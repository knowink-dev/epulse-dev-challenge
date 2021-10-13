class AddElectionIdToVote < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :election_id, :bigint
  end
end
