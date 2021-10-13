class CreateElectionCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :election_candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :party
      t.string :occupation
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.integer :gender
      t.references :election, null: false, foreign_key: true
      t.timestamps
    end
  end
end
