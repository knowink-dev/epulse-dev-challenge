class AddSsnToVoter < ActiveRecord::Migration[6.1]
  def change
    add_column :voters, :last_4_digits_ssn, :integer
  end
end
