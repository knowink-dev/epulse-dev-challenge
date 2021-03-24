class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :county
      t.string :state
      t.string :display_name

      t.timestamps
    end
  end
end
