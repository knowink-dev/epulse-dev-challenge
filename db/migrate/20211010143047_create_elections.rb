class CreateElections < ActiveRecord::Migration[6.1]
  def change
    create_table :elections do |t|
      t.string :election_title
      t.string :state
      t.string :city
      t.date :election_date
      t.integer :election_type, default: 0
      t.string :supervisor_name

      t.timestamps
    end
  end
end
