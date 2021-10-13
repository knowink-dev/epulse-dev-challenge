class CreatePrecincts < ActiveRecord::Migration[6.1]
  def change
    create_table :precincts do |t|
      t.string :name
      t.string :voter_tabulation_district
      t.string :congressional_district
      t.string :state_senate
      t.string :state_house
      t.string :superior_court
      t.string :judicial_name
      t.string :prosecutorial_name
      t.string :municipality_name
      t.string :township_name
      t.string :school_district

      t.timestamps
    end
  end
end
