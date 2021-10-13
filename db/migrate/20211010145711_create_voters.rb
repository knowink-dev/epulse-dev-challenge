class CreateVoters < ActiveRecord::Migration[6.1]
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :party_affiliation
      t.boolean :provisional, null: false, default: false

      t.timestamps
    end
  end
end
