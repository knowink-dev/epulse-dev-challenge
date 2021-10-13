class CreatePrecinctPollsters < ActiveRecord::Migration[6.1]
  def change
    create_table :precinct_pollsters do |t|
      t.references :precinct, null: false, foreign_key: true, index: true
      t.references :poll_worker, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
