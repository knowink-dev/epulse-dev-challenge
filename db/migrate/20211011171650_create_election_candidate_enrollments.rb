class CreateElectionCandidateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :election_candidate_enrollments do |t|
      t.references :election, null: false, foreign_key: true
      t.references :election_candidate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
