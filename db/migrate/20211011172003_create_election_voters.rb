class CreateElectionVoters < ActiveRecord::Migration[6.1]
  def change
    create_table :election_voters do |t|
      t.references :election, null: false, foreign_key: true
      t.references :voter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
