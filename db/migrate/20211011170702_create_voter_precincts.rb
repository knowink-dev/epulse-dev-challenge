class CreateVoterPrecincts < ActiveRecord::Migration[6.1]
  def change
    create_table :voter_precincts do |t|
      t.references :voter, null: false, foreign_key: true
      t.references :precinct, null: false, foreign_key: true

      t.timestamps
    end
  end
end
